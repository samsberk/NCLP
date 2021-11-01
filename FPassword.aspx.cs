using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class FPassword : System.Web.UI.Page
{
    string cmd;
    DBManager dm = new DBManager();
    EncryptionDecryption em = new EncryptionDecryption();
    GenCaptcha gm = new GenCaptcha();
    MyMail mm = new MyMail();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void forgotbtn_Click(object sender, EventArgs e)
    {
        string pas, cap = gm.getcode();
        pas = em.EncryptMyData(cap);
        if (ftype.SelectedValue.ToString() == "Surveyor")
        {
            string code = "12345";
            if (codetxt.Text.ToString() == code)
            {
                cmd = "select * from surveyor where EmailID='" + emailtxt.Text.ToLower().ToString() + "'";
                DataTable dt = dm.SelectQuary(cmd);
                if (dt.Rows.Count > 0)
                {
                    cmd = "update surveyor set Password='" + pas + "' where EmailID='" + emailtxt.Text.ToLower().ToString() + "'";
                    if (dm.ExInsertUpdateorDelete(cmd))
                    {
                        cmd = "Hello " + dt.Rows[0][1].ToString() + "<br><br>Now your password is : " + cap + "<br>please change your password after login.";
                        if (mm.SendMail(dt.Rows[0][0].ToString(), "Password Changed", cmd))
                            Response.Write("<script>alert('Password sent to your email id, please check it out.')</script>");
                        else
                            Response.Write("<script>alert('Email ID not found, contact to Admin.')</script>");
                        ftype.ClearSelection();
                        emailtxt.Text = "";
                        codetxt.Text = "";
                    }
                    else
                    {
                        Response.Write("<script>alert('Something went wrong, please try again later.')</script>");
                    }
                }
                else
                {
                    Response.Write("<script>alert('Invalid Email ID or Secret Code.')</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('Invalid Email ID or Secret Code.')</script>");
            }
        }
        else if (ftype.SelectedValue.ToString() == "Administrator")
        {
            string code = "0123456789";
            if (codetxt.Text.ToString() == code)
            {
                cmd = "select * from admin where EmailID='" + emailtxt.Text.ToLower().ToString() + "'";
                DataTable dt = dm.SelectQuary(cmd);
                if (dt.Rows.Count > 0)
                {
                    cmd = "update admin set Password='" + pas + "' where EmailID='" + emailtxt.Text.ToLower().ToString() + "'";
                    if (dm.ExInsertUpdateorDelete(cmd))
                    {
                        cmd = "Hello " + dt.Rows[0][1].ToString() + "<br><br>Now your password is : " + cap + "<br>please change your password after login.";
                        if (mm.SendMail(dt.Rows[0][0].ToString(), "Password Changed", cmd))
                            Response.Write("<script>alert('Password sent to your email id, please check it out.')</script>");
                        else
                            Response.Write("<script>alert('Email ID not found, contact to Developer.')</script>");
                        ftype.ClearSelection();
                        emailtxt.Text = "";
                        codetxt.Text = "";
                    }
                    else
                    {
                        Response.Write("<script>alert('Something went wrong, please try again later.')</script>");
                    }
                }
                else
                {
                    Response.Write("<script>alert('Invalid Email ID or Secret Code.')</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('Invalid Email ID or Secret Code.')</script>");
            }
        }
        else
        {
            Response.Write("<script>alert('Please select Login Type First.')</script>");
        }
    }
}