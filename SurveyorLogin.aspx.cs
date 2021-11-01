using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class SurveyorLogin : System.Web.UI.Page
{
    string cmd, pas;
    DBManager dm = new DBManager();
    EncryptionDecryption em = new EncryptionDecryption();
    protected void Page_Load(object sender, EventArgs e)
    {
        string scok;
        if (Request.Cookies["admin"] == null || Request.Cookies["admin"].Equals("1"))
        {

        }
        else
        {
            scok = Request.Cookies["admin"].Value.ToString();
            cmd = "select * from admin where EmailID='" + scok + "'";
            DataTable dt = dm.SelectQuary(cmd);
            if (dt.Rows.Count > 0)
            {
                Response.Redirect("Admin_Home");
            }
        }
        if (Request.Cookies["surveyor"] == null || Request.Cookies["surveyor"].Equals("1"))
        {
            
        }
        else
        {
            scok = Request.Cookies["surveyor"].Value.ToString();
            cmd = "select * from surveyor where EmailID='" + scok + "'";
            DataTable dt = dm.SelectQuary(cmd);
            if (dt.Rows.Count > 0)
            {
                string final = "No";
                cmd = "select * from coverform where Final='" + final + "'";
                DataTable dcf = dm.SelectQuary(cmd);
                if (dcf.Rows.Count > 0)
                {
                    Response.Redirect("Surveyor_Home?AppID=" + dcf.Rows[0][1].ToString() + "");
                }
                else
                {
                    string n = "NewSetOfForm";
                    cmd = "WEbSite ForNCLP_SurveyWebApplicationBysamsberk";
                    Response.Redirect("Surveyor_Home?AppID=" + em.EncryptMyData(n) + "&VirtualKey=" + em.EncryptMyData(cmd) + "");
                }
            }
        }
    }

    protected void loginbtn_Click(object sender, EventArgs e)
    {
        /*string dum = "dummy";
        cmd = "insert into Surveyor values('" + emailtxt.Text + "',N'" + passwordtxt.Text + "','" + dum + "','" + dum + "','" + dum + "')";
        dm.ExInsertUpdateorDelete(cmd);
        Response.Write("<script>alert('success')</script>");*/
        if (ltype.SelectedValue.ToString() == "Surveyor")
        {
            pas = em.EncryptMyData(passwordtxt.Text);
            cmd = "select * from surveyor where EmailID='" + emailtxt.Text.ToLower().ToString() + "' and Password='" + pas + "'";
            DataTable dat = dm.SelectQuary(cmd);
            if (dat.Rows.Count > 0)
            {
                HttpCookie scook = new HttpCookie("surveyor");
                scook.Value = dat.Rows[0][0].ToString();
                scook.Expires = DateTime.Now.AddDays(30);
                Response.Cookies.Add(scook);
                string final = "No";
                cmd = "select * from coverform where Final='" + final + "'";
                DataTable dcf = dm.SelectQuary(cmd);
                if (dcf.Rows.Count > 0)
                {
                    Response.Redirect("Surveyor_Home?AppID=" + dcf.Rows[0][1].ToString() + "");
                }
                else
                {
                    string n = "NewSetOfForm";
                    cmd = "WEbSite ForNCLP_SurveyWebApplicationBysamsberk";
                    Response.Redirect("Surveyor_Home?AppID=" + em.EncryptMyData(n) + "&VirtualKey=" + em.EncryptMyData(cmd) + "");
                }
            }
            else
            {
                Response.Write("<script>alert('Invalid Email ID or Password.')</script>");
                ltype.ClearSelection();
                emailtxt.Text = "";
            }
        }
        else if (ltype.SelectedValue.ToString() == "Administrator")
        {
            pas = em.EncryptMyData(passwordtxt.Text);
            cmd = "select * from admin where EmailID='" + emailtxt.Text.ToLower().ToString() + "' and Password='" + pas + "'";
            DataTable dat = dm.SelectQuary(cmd);
            if (dat.Rows.Count > 0)
            {
                HttpCookie scook = new HttpCookie("admin");
                scook.Value = dat.Rows[0][0].ToString();
                scook.Expires = DateTime.Now.AddDays(30);
                Response.Cookies.Add(scook);
                Response.Redirect("Admin_Home");
            }
            else
            {
                Response.Write("<script>alert('Invalid Email ID or Password.')</script>");
                ltype.ClearSelection();
                emailtxt.Text = "";
            }
        }
        else
        {
            Response.Write("<script>alert('Please select Login Type First.')</script>");
        }
    }
}