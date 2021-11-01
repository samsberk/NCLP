using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;

public partial class Surveyor_Zone_Logout : System.Web.UI.Page
{
	string cmd;
	DBManager dm = new DBManager();
	EncryptionDecryption em = new EncryptionDecryption();
	GenCaptcha gm = new GenCaptcha();
	MyMail mm = new MyMail();
	protected void Page_Load(object sender, EventArgs e)
    {
		string scok = Request.Cookies["surveyor"].Value;
		cmd = "select * from admin where EmailID='" + scok + "'";
		DataTable dad = dm.SelectQuary(cmd);
		if (dad.Rows.Count > 0)
		{
			HttpCookie scook = new HttpCookie("admin");
			scook.Value = scok.ToString();
			scook.Expires = DateTime.Now.AddDays(30);
			Response.Cookies.Add(scook);
			Response.Cookies["surveyor"].Value = null;
			Response.Redirect("Admin_Home");
		}
		else
		{
			Response.Cookies["surveyor"].Value = null;
			Response.Redirect("Survey_Login");
		}
    }
}