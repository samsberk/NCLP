using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;


public partial class Admin_Zone_UpdatePicture : System.Web.UI.Page
{
    string cmd;
    DBManager dm = new DBManager();
    EncryptionDecryption em = new EncryptionDecryption();
    GenCaptcha gm = new GenCaptcha();
    MyMail mm = new MyMail();
	protected void Page_Load(object sender, EventArgs e)
	{
		string scok;
		scok = Request.Cookies["admin"].Value;
		cmd = "select * from admin where EmailID='" + scok + "'";
		DataTable dad = dm.SelectQuary(cmd);
		if (dad.Rows.Count > 0)
		{
			string unno = Request.QueryString["AppID"];
			string pno = Request.QueryString["AppID2"];
			int atid = int.Parse(pno);
			cmd = "select * from coverform where UnNo='" + unno + "'";
			DataTable dadr = dm.SelectQuary(cmd);
			lblfc.Text = unno;
			lbladress.Text = dadr.Rows[0][7].ToString() + ", " + dadr.Rows[0][6].ToString() + ", " + dadr.Rows[0][5].ToString() + ", " + dadr.Rows[0][4].ToString() + ", " + dadr.Rows[0][3].ToString() + ", " + dadr.Rows[0][2].ToString();
			cmd = "select * from form3 where UnNo='" + unno + "' and c1='" + pno + "'";
			DataTable dff = dm.SelectQuary(cmd);
			if (dff.Rows.Count > 0)
			{
				opic1.ImageUrl = "~/Form4Images/" + dff.Rows[0][18].ToString();
				opic2.ImageUrl = "~/Form4Images/" + dff.Rows[0][19].ToString();
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
    protected void bbtn_Click(object sender, EventArgs e)
    {
        string unno = (Request.QueryString["AppID"]);
        string pno = (Request.QueryString["AppID2"]);
        Response.Redirect("Form_3_of_3?AppID=" + (unno) + "&AppID2=" + (pno) + "");
    }

    protected void backbtn_Click(object sender, EventArgs e)
    {
        string unno = (Request.QueryString["AppID"]);
        string pno = (Request.QueryString["AppID2"]);
        Response.Redirect("Form_3_of_3?AppID=" + (unno) + "&AppID2=" + (pno) + "");
    }

    protected void btnp1_Click(object sender, EventArgs e)
    {
        string scok = Request.Cookies["surveyor"].Value;
        cmd = "select * from surveyor where EmailID='" + scok + "'";
        DataTable dsd = dm.SelectQuary(cmd);
        if (dsd.Rows.Count > 0)
        {
            string unno = (Request.QueryString["AppID"]);
            string c1 = (Request.QueryString["AppID2"]);
            int atid = int.Parse(c1);
            cmd = "select * from form3 where UnNo='" + unno + "' and c1='" + atid.ToString() + "'";
            DataTable dcunno = dm.SelectQuary(cmd);
            if (dcunno.Rows.Count > 0)
            {
                cmd = "update form3 set c12a='" + unno + "_F" + atid.ToString() + "-" + pic.FileName + "' where UnNo='" + unno + "' and c1='" + atid.ToString() + "'";
                if (dm.ExInsertUpdateorDelete(cmd))
                {
                    FileInfo fl = new FileInfo(Server.MapPath("~/Form4Images/" + dcunno.Rows[0][18].ToString()));
                    if (fl.Exists)
                        fl.Delete();
                    pic.SaveAs(Server.MapPath("~/Form4Images/" + unno + "_F" + atid.ToString() + "-" + pic.FileName));
                    Response.Redirect("Update_Picture?AppID=" + (unno) + "&AppID2=" + (c1) + "");
                }
                else
                    Response.Write("<script>alert('Something went wrong, please try again later.')</script>");
            }
        }
        else
        {
            Response.Redirect("Survey_Login");
        }
    }

    protected void btnp2_Click(object sender, EventArgs e)
    {
        string scok = Request.Cookies["surveyor"].Value;
        cmd = "select * from Surveyor where EmailID='" + scok + "'";
        DataTable dsd = dm.SelectQuary(cmd);
        if (dsd.Rows.Count > 0)
        {
            string unno = (Request.QueryString["AppID"]);
            string c1 = (Request.QueryString["AppID2"]);
            int atid = int.Parse(c1);
            cmd = "select * from form3 where UnNo='" + unno + "' and c1='" + atid.ToString() + "'";
            DataTable dcunno = dm.SelectQuary(cmd);
            if (dcunno.Rows.Count > 0)
            {
                cmd = "update form3 set c12b='" + unno + "_S" + atid.ToString() + "-" + pic2.FileName + "' where UnNo='" + unno + "' and c1='" + atid.ToString() + "'";
                if (dm.ExInsertUpdateorDelete(cmd))
                {
                    FileInfo fl2 = new FileInfo(Server.MapPath("~/Form4Images/" + dcunno.Rows[0][19].ToString()));
                    if (fl2.Exists)
                        fl2.Delete();
                    pic2.SaveAs(Server.MapPath("~/Form4Images/" + unno + "_S" + atid.ToString() + "-" + pic2.FileName));
                    Response.Redirect("Update_Picture?AppID=" + (unno) + "&AppID2=" + (c1) + "");
                }
                else
                    Response.Write("<script>alert('Something went wrong, please try again later.')</script>");
            }
        }
        else
        {
            Response.Redirect("Survey_Login");
        }
    }
}