using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Surveyor_Zone_Default : System.Web.UI.Page
{
    string cmd;
    DBManager dm = new DBManager();
    EncryptionDecryption em = new EncryptionDecryption();
    GenCaptcha gm = new GenCaptcha();
    MyMail mm = new MyMail();
    protected void Page_Load(object sender, EventArgs e)
    {
        string scok = Request.Cookies["surveyor"].Value;
        if (scok == null)
        {

        }
        else
        {
            cmd = "select * from surveyor where EmailID='" + scok + "'";
            DataTable dsd = dm.SelectQuary(cmd);
            if (dsd.Rows.Count > 0)
            {
                int pno;
				string unno = Request.QueryString["AppID"];
                cmd = "select * from coverform where UnNo='" + unno + "'";
                DataTable dcunno = dm.SelectQuary(cmd);
                if (dcunno.Rows.Count > 0)
                {
                    prapatranolbl.Text = dcunno.Rows[0][0].ToString();
                    lbl1.Text = dcunno.Rows[0][2].ToString();
                    lbl2.Text = dcunno.Rows[0][3].ToString();
                    lbl3.Text = dcunno.Rows[0][4].ToString();
                    lbl4.Text = dcunno.Rows[0][5].ToString();
                    lbl5.Text = dcunno.Rows[0][6].ToString();
                    lbl6.Text = dcunno.Rows[0][7].ToString();
                    lbl7.Text = dcunno.Rows[0][8].ToString();
					lblfc.Text = unno;
					lbladress.Text= dcunno.Rows[0][7].ToString() + ", " + dcunno.Rows[0][6].ToString() + ", " + dcunno.Rows[0][5].ToString() + ", " + dcunno.Rows[0][4].ToString() + ", " + dcunno.Rows[0][3].ToString() + ", " + dcunno.Rows[0][2].ToString();
				}
                else
                {
                    cmd = "select * from coverform";
                    DataTable dcf = dm.SelectQuary(cmd);
                    pno = dcf.Rows.Count + 1;
                    prapatranolbl.Text = pno.ToString();
					lblfc.Text = "New Form";
					lbladress.Text = "Fill for Address";
				}
            }
            else
            {
                Response.Redirect("Survey_Login");
            }
        }
    }

    protected void f1_Click(object sender, EventArgs e)
    {
		string unno = Request.QueryString["AppID"];
        string scok = Request.Cookies["surveyor"].Value;
        if (scok == null)
        {
            
        }
        else
        {
            cmd = "select * from surveyor where EmailID='" + scok + "'";
            DataTable dsd = dm.SelectQuary(cmd);
            if (dsd.Rows.Count > 0)
            {
                int pno;
                long un;
                cmd = "select * from coverform where UnNo='" + unno + "'";
                DataTable dcunno = dm.SelectQuary(cmd);
                if (dcunno.Rows.Count > 0)
                {
                    cmd = "update coverform set Janpad=N'" + janpadtxt.Text.ToUpper().ToString() + "', Tahaseel=N'" + tahasiltxt.Text.ToUpper().ToString() + "', Shahar=N'" + shahartxt.Text.ToUpper().ToString() + "', Mohalla=N'" + gaontxt.Text.ToUpper().ToString() + "', WardNo=N'" + wardtxt.Text.ToUpper().ToString() + "', MakanNo=N'" + makantxt.Text.ToUpper().ToString() + "', Surveyor=N'" + surveyortxt.Text.ToUpper().ToString() + "' where UnNo='" + unno + "'";
                    if (dm.ExInsertUpdateorDelete(cmd))
                    {
                        Response.Redirect("Form_2_of_3?AppID=" + unno + "");
                    }
                    else
                    {
                        Response.Write("<script>alert('Something went wrong, please try again later.')</script>");
                    }
                }
                else
                {
                    string final = "No";
                    cmd = "select * from coverform";
                    DataTable dcf = dm.SelectQuary(cmd);
                    pno = dcf.Rows.Count + 1;
                    un = 310800 + pno;
                    prapatranolbl.Text = pno.ToString();
                    cmd = "insert into coverform values('" + pno.ToString() + "',N'" + un.ToString() + "',N'" + janpadtxt.Text.ToUpper().ToString() + "',N'" + tahasiltxt.Text.ToUpper().ToString() + "',N'" + shahartxt.Text.ToUpper().ToString() + "',N'" + gaontxt.Text.ToUpper().ToString() + "',N'" + wardtxt.Text.ToUpper().ToString() + "',N'" + makantxt.Text.ToUpper().ToString() + "',N'" + surveyortxt.Text.ToUpper().ToString() + "','" + DateTime.Now.ToString() + "',N'" + dsd.Rows[0][0].ToString() + "','" + final + "')";
                    if (dm.ExInsertUpdateorDelete(cmd))
                    {
                        cmd = "select * from coverform where PrapatraNo='" + pno.ToString() + "'";
                        DataTable dcf2 = dm.SelectQuary(cmd);
                        Response.Redirect("Form_2_of_3?AppID=" + dcf2.Rows[0][1].ToString() + "");
                    }
                    else
                    {
                        Response.Write("<script>alert('Something went wrong, please try again later.')</script>");
                    }
                }
            }
            else
            {
                Response.Redirect("Survey_Login");
            }
        }
    }
}