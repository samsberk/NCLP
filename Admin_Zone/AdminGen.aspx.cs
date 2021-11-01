using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Admin_Zone_AdminGen : System.Web.UI.Page
{
    DBManager dm = new DBManager();
    EncryptionDecryption em = new EncryptionDecryption();
    MyMail mm = new MyMail();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void genbtn_Click(object sender, EventArgs e)
    {
        string cmd, pas;
        pas = em.EncryptMyData(adpas.Text);
        cmd = "select * from admin where EmailID='" + ademail.Text.ToLower().ToString() + "'";
        DataTable dt = dm.SelectQuary(cmd);
        if(dt.Rows.Count>0)
        {
            Response.Write("<script>alert('Already Infected')</script>");
        }
        else
        {
            cmd = "insert into admin values('" + ademail.Text.ToLower().ToString() + "','" + adname.Text.ToUpper() + "','" + pas + "','" + DateTime.Now.ToString() + "')";
            if(dm.ExInsertUpdateorDelete(cmd))
            {
                cmd = "Hello Sir,<br><br>You are registered as <b>Administrator</b> on mentalhealthmission.in.<br><br>" +
                    "UserID/Email : " + ademail.Text.ToLower().ToString() + "<br>and Password : " + adpas.Text.ToString() +
                    "<br><br><b>Don't Share it with anyone.<br>Your Email ID is your User ID.</b><br><br>";

                if (mm.SendMail(ademail.Text.ToLower().ToString(), "Administrator for mentalhealthmission.in", cmd))
                    Response.Write("<script>alert('Success & sent')</script>");
                else
                    Response.Write("<script>alert('Success but not sent')</script>");
            }
            else
            {
                Response.Write("<script>alert('fail')</script>");
            }
        }
    }


    protected void delbtn_Click(object sender, EventArgs e)
    {
        string cmd;
        cmd = "select * from admin where EmailID='" + deltxt.Text.ToLower().ToString() + "'";
        DataTable dt = dm.SelectQuary(cmd);
        if (dt.Rows.Count > 0)
        {
            cmd = "delete from admin where EmailID='" + deltxt.Text.ToLower().ToString() + "'";
            if (dm.ExInsertUpdateorDelete(cmd))
            {
                Response.Write("<script>alert('Success')</script>");
            }
            else
            {
                Response.Write("<script>alert('fail')</script>");
            }
        }
        else
        {
            Response.Write("<script>alert('Not Found')</script>");
        }
    }
}