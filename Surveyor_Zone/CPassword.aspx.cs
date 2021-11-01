using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Surveyor_Zone_CPassword : System.Web.UI.Page
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

            }
            else
            {
                Response.Redirect("Survey_Login");
            }
        }
    }

    protected void cpasbtn_Click(object sender, EventArgs e)
    {
        string scok = Request.Cookies["surveyor"].Value;
        if (npastxt.Text != "" || rpastxt.Text != "")
        {
            cmd = "select * from surveyor where EmailID='" + scok + "'";
            DataTable dsd = dm.SelectQuary(cmd);
            if (dsd.Rows.Count > 0)
            {
                string op, np;
                op = em.EncryptMyData(opastxt.Text);
                np = em.EncryptMyData(npastxt.Text);
                if (dsd.Rows[0][3].ToString() == op)
                {
                    if (npastxt.Text == rpastxt.Text)
                    {
                        cmd = "update surveyor set Password='" + np + "' where EmailID='" + scok + "'";
                        if (dm.ExInsertUpdateorDelete(cmd))
                        {
                            Response.Write("<script>alert('Password changed.')</script>");
                        }
                        else
                            Response.Write("<script>alert('Something went wrong, please try again later.')</script>");
                    }
                    else
                    {
                        Response.Write("<script>alert('Password not match.')</script>");
                    }
                }
                else
                {
                    Response.Write("<script>alert('Old Password is not correct.')</script>");
                }
            }
        }
        else
        {
            Response.Write("<script>alert('New password should contain something.')</script>");
        }
    }
}