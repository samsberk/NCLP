using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Admin_Zone_Form2_Preview : System.Web.UI.Page
{
    string cmd;
    DBManager dm = new DBManager();
    EncryptionDecryption em = new EncryptionDecryption();
    GenCaptcha gm = new GenCaptcha();
    MyMail mm = new MyMail();
    protected void Page_Load(object sender, EventArgs e)
    {
        string scok = Request.Cookies["admin"].Value;
        cmd = "select * from admin where EmailID='" + scok + "'";
        DataTable dad = dm.SelectQuary(cmd);
        if (dad.Rows.Count > 0)
        {

        }
        else
        {
            Response.Redirect("Survey_Login");
        }
    }
}