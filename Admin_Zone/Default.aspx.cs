using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Admin_Zone_Default : System.Web.UI.Page
{
    string cmd, del;
	int i;
    DBManager dm = new DBManager();
    EncryptionDecryption em = new EncryptionDecryption();
    GenCaptcha gm = new GenCaptcha();
    MyMail mm = new MyMail();
    protected void Page_Load(object sender, EventArgs e)
    {
        int a, b;
        string scok = Request.Cookies["admin"].Value;
        cmd = "select * from admin where EmailID='" + scok + "'";
        DataTable dad = dm.SelectQuary(cmd);
        if (dad.Rows.Count > 0)
        {
			if (Request.QueryString["delete"] == null)
				del = "NONE";
			else
				del = (Request.QueryString["delete"]);
			cmd = "delete from surveyor where EmailID='" + del + "'";
			if (dm.ExInsertUpdateorDelete(cmd))
				Response.Redirect("Admin_Home");
			cmd = "select * from surveyor";
			DataTable dtsur = dm.SelectQuary(cmd);
			if (dtsur.Rows.Count > 0)
			{
				for (i = 0; i < dtsur.Rows.Count; i++)
				{
					slistph.Controls.Add(new Literal { Text = "<tr><td><a href='Admin_Home?delete=" + (dtsur.Rows[i]["EmailID"].ToString()) + "' style='color:red;'>Delete</a></td><td>" + dtsur.Rows[i][0].ToString() + "</td><td>" + dtsur.Rows[i][1].ToString() + "</td><td>" + dtsur.Rows[i][2].ToString() + "</td><td>" + dtsur.Rows[i][4].ToString() + "</td></tr>" });
				}
			}
            cmd = "select * from surveyor where EmailID='" + scok + "'";
            DataTable dts = dm.SelectQuary(cmd);
            if(dts.Rows.Count>0)
            {

            }
            else
            {
                cmd = "insert into surveyor values('" + scok + "','" + dad.Rows[0][1].ToString() + "','" + null + "','" + dad.Rows[0][2].ToString() + "','" + DateTime.Now.ToString() + "')";
                dm.ExInsertUpdateorDelete(cmd);
            }
            
            cmd = "select * from coverform";
            DataTable dscf = dm.SelectQuary(cmd);
            if (dscf.Rows.Count > 0)
            {
				int ct = 0;
				for (a = 0, b = 1; a < dscf.Rows.Count; a++, b++)
				{
					cmd = "select * from form2 where UnNo='" + dscf.Rows[a][1].ToString() + "'";
					DataTable dsff = dm.SelectQuary(cmd);
					cmd = "select * from form3 where UnNo='" + dscf.Rows[a][1].ToString() + "'";
					DataTable dthf = dm.SelectQuary(cmd);
					if (dsff.Rows.Count > 0)
					{
						vdplaceholder.Controls.Add(new Literal() { Text = "<tr><td>" + b + "</td><td><a href='Show_Data?For=" + (dscf.Rows[a][1].ToString()) + "'>" + dscf.Rows[a][1].ToString() + "</a></td><td>" + dsff.Rows[0][4].ToString() + "</td><td>" + dscf.Rows[a][7].ToString() + ", " + dscf.Rows[a][6].ToString() + ", " + dscf.Rows[a][5].ToString() + ", " + dscf.Rows[a][4].ToString() + ", " + dscf.Rows[a][3].ToString() + ", " + dscf.Rows[a][2].ToString() + "</td><td>" + dthf.Rows.Count.ToString() + "</td></tr>" });
						ct = ct + dthf.Rows.Count;
					}
					else
					{
						vdplaceholder.Controls.Add(new Literal() { Text = "<tr><td>" + b + "</td><td><a href='Show_Data?For=" + (dscf.Rows[a][1].ToString()) + "'>" + dscf.Rows[a][1].ToString() + "</a></td><td>Not Filled Yet</td><td>" + dscf.Rows[a][7].ToString() + ", " + dscf.Rows[a][6].ToString() + ", " + dscf.Rows[a][5].ToString() + ", " + dscf.Rows[a][4].ToString() + ", " + dscf.Rows[a][3].ToString() + ", " + dscf.Rows[a][2].ToString() + "</td><td>" + dthf.Rows.Count.ToString() + "</td></tr>" });
						ct = ct + dthf.Rows.Count;
					}
				}
				vdplaceholder.Controls.Add(new Literal() { Text = "<tr><td></td><td></td><td></td><td style='text-align:right;'>Total No. of Child before " + DateTime.Now.ToString() + "</td><td>" + ct + "</td></tr>" });
			}
        }
        else
        {
            Response.Redirect("Survey_Login");
        }
    }

    protected void genbtn_Click(object sender, EventArgs e)
    {
        string scok = Request.Cookies["admin"].Value;
        cmd = "select * from admin where EmailID='" + scok + "'";
        DataTable dt = dm.SelectQuary(cmd);
        if (dt.Rows.Count > 0)
        {
            string pas, cap = gm.getcode();
            pas = em.EncryptMyData(cap);
            cmd = "select * from surveyor where EmailID='" + emailtxt.Text.ToLower().ToString() + "'";
            DataTable ds = dm.SelectQuary(cmd);
            if (ds.Rows.Count > 0)
            {
                Response.Write("<script>alert('This Email ID is already registered.')</script>");
                emailtxt.Text = "";
                nametxt.Text = "";
                contacttxt.Text = "";
            }
            else
            {
                cmd = "insert into surveyor values('" + emailtxt.Text.ToLower().ToString() + "',N'" + nametxt.Text + "','" + contacttxt.Text.ToString() + "','" + pas + "','" + DateTime.Now.ToString() + "')";
                if (dm.ExInsertUpdateorDelete(cmd))
                {
                    cmd = "Hello " + nametxt.Text + "<br><br>your email ID : " + emailtxt.Text + "<br> your password : " + cap + "<br>please change your password after login.";
                    if (mm.SendMail(emailtxt.Text, "Registration for Surveyor", cmd))
                        Response.Write("<script>alert('Survayor ID generated, and password sent to Email ID.')</script>");
                    else
                        Response.Write("<script>alert('Email ID not found, contact to Surveyor for correct email ID.')</script>");
                    emailtxt.Text = "";
                    nametxt.Text = "";
                    contacttxt.Text = "";
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