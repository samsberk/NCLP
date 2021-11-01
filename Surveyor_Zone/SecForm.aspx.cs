using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;

public partial class Surveyor_Zone_SecForm : System.Web.UI.Page
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
                string unno = Request.QueryString["AppID"];
                cmd = "select * from coverform where UnNo='" + unno + "'";
                DataTable dadr = dm.SelectQuary(cmd);
                txt2.Text = dadr.Rows[0][7].ToString() + ", " + dadr.Rows[0][6].ToString() + ", " + dadr.Rows[0][5].ToString() + ", " + dadr.Rows[0][4].ToString() + ", " + dadr.Rows[0][3].ToString() + ", " + dadr.Rows[0][2].ToString();

                lblfc.Text = unno;
                lbladress.Text = dadr.Rows[0][7].ToString() + ", " + dadr.Rows[0][6].ToString() + ", " + dadr.Rows[0][5].ToString() + ", " + dadr.Rows[0][4].ToString() + ", " + dadr.Rows[0][3].ToString() + ", " + dadr.Rows[0][2].ToString();
                cmd = "select * from form2 where UnNo='" + unno + "'";
                DataTable dcunno = dm.SelectQuary(cmd);
                if (dcunno.Rows.Count > 0)
                {
                    label1.Text = dcunno.Rows[0][4].ToString();
                    label3.Text = dcunno.Rows[0][6].ToString();
                    label4.Text = dcunno.Rows[0][7].ToString();
                    label5.Text = dcunno.Rows[0][8].ToString();
                    label6.Text = dcunno.Rows[0][9].ToString();
                    label7a.Text = dcunno.Rows[0][10].ToString();
                    label7b.Text = dcunno.Rows[0][11].ToString();
					label8a1.Text = dcunno.Rows[0][12].ToString();
					label8a2.Text = dcunno.Rows[0][13].ToString();
					label8a3.Text = dcunno.Rows[0][14].ToString();
					label8b1.Text = dcunno.Rows[0][15].ToString();
					label8b2.Text = dcunno.Rows[0][16].ToString();
					label8b3.Text = dcunno.Rows[0][17].ToString();
					label9a1.Text = dcunno.Rows[0][18].ToString();
					label9a2.Text = dcunno.Rows[0][19].ToString();
					label9a3.Text = dcunno.Rows[0][20].ToString();
					label9b1.Text = dcunno.Rows[0][21].ToString();
					label9b2.Text = dcunno.Rows[0][22].ToString();
					label9b3.Text = dcunno.Rows[0][23].ToString();
					label10.Text = dcunno.Rows[0]["c10"].ToString();
					label11.Text = dcunno.Rows[0]["c11"].ToString();
                }
                else
                {

                }
            }
            else
            {
                Response.Redirect("Survey_Login");
            }
        }
    }

    protected void nbtn_Click(object sender, EventArgs e)
    {
        string unno = Request.QueryString["AppID"];
        int sno, atid = 1;
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
                cmd = "select * from form2 where UnNo='" + unno + "'";
                DataTable dcunno = dm.SelectQuary(cmd);
                if (dcunno.Rows.Count > 0)
                {
					cmd = "update form2 set SubDate='" + DateTime.Now.ToString() + "', c1=N'" + txt1.Text.ToUpper().ToString() + "', c2=N'" + txt2.Text.ToUpper().ToString() + "', c3=N'" + txt3.SelectedValue.ToString() + "', c4=N'" + txt4.SelectedValue.ToString() + "', c5=N'" + txt5.Text.ToUpper().ToString() + "', c6=N'" + txt6.Text.ToUpper().ToString() + "', c7a=N'" + txt7a.Text.ToUpper().ToString() + "', c7b=N'" + txt7b.Text.ToUpper().ToString() + "',c8a1=N'" + txt8a1.Text.ToUpper().ToString() + "',c8a2=N'" + txt8a2.Text.ToUpper().ToString() + "',c8a3=N'" + txt8a3.Text.ToUpper().ToString() + "',c8b1=N'" + txt8b1.Text.ToUpper().ToString() + "',c8b2=N'" + txt8b2.Text.ToUpper().ToString() + "',c8b3=N'" + txt8b3.Text.ToUpper().ToString() + "',c9a1=N'" + txt9a1.Text.ToUpper().ToString() + "',c9a2=N'" + txt9a2.Text.ToUpper().ToString() + "',c9a3=N'" + txt9a3.Text.ToUpper().ToString() + "',c9b1=N'" + txt9b1.Text.ToUpper().ToString() + "',c9b2=N'" + txt9b2.Text.ToUpper().ToString() + "',c9b3=N'" + txt9b3.Text.ToUpper().ToString() + "',c10=N'" + txt10.SelectedValue.ToString() + "',c11=N'" + txt11.SelectedValue.ToString() + "' where UnNo='" + unno + "'";
                    if (dm.ExInsertUpdateorDelete(cmd))
                    {
						Response.Redirect("Form_3_of_3?AppID=" + unno + "&AppID2=" + atid.ToString() + "");
                    }
                    else
                    {
                        Response.Write("<script>alert('Something went wrong, please try again later.')</script>");
                    }
                }
                else
                {
                    cmd = "select * from form2";
                    DataTable df = dm.SelectQuary(cmd);
                    sno = df.Rows.Count + 1;
					cmd = "insert into form2 values('" + sno.ToString() + "','" + unno + "','" + dsd.Rows[0][0].ToString() + "','" + DateTime.Now.ToString() + "',N'" + txt1.Text.ToUpper().ToString() + "',N'" + txt2.Text.ToUpper().ToString() + "',N'" + txt3.SelectedValue.ToString() + "',N'" + txt4.SelectedValue.ToString() + "',N'" + txt5.Text.ToUpper().ToString() + "',N'" + txt6.Text.ToUpper().ToString() + "',N'" + txt7a.Text.ToUpper().ToString() + "',N'" + txt7b.Text.ToUpper().ToString() + "',N'" + txt8a1.Text.ToUpper().ToString() + "',N'" + txt8a2.Text.ToUpper().ToString() + "',N'" + txt8a3.Text.ToUpper().ToString() + "',N'" + txt8b1.Text.ToUpper().ToString() + "',N'" + txt8b2.Text.ToUpper().ToString() + "',N'" + txt8b3.Text.ToUpper().ToString() + "',N'" + txt9a1.Text.ToUpper().ToString() + "',N'" + txt9a2.Text.ToUpper().ToString() + "',N'" + txt9a3.Text.ToUpper().ToString() + "',N'" + txt9b1.Text.ToUpper().ToString() + "',N'" + txt9b2.Text.ToUpper().ToString() + "',N'" + txt9b3.Text.ToUpper().ToString() + "',N'" + txt10.SelectedValue.ToString() + "',N'" + txt11.SelectedValue.ToString() + "')";
                    if (dm.ExInsertUpdateorDelete(cmd))
                    {
                        Response.Redirect("Form_3_of_3?Appid=" + unno + "&AppID2=" + atid.ToString() + "");
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

    protected void bbtn_Click(object sender, EventArgs e)
    {
		string unno = Request.QueryString["AppID"];
		Response.Redirect("Surveyor_Home?AppID=" + unno + "");
    }

    protected void jmpf1_Click(object sender, EventArgs e)
	{
		string unno = Request.QueryString["AppID"];
		Response.Redirect("Surveyor_Home?AppID=" + unno + "");
    }
}