using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;

public partial class Surveyor_Zone_FourthForm : System.Web.UI.Page
{
    string cmd;
    int a = 1;
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
                string c1 = Request.QueryString["AppID2"];
                int atid = int.Parse(c1);
                txt1.Text = c1;
                cmd = "select * from admin where EmailID='" + scok + "'";
                DataTable dad = dm.SelectQuary(cmd);
                if (dad.Rows.Count > 0)
                {
                    
                }
                else
                {
                    uplink.Style.Add("display", "none");
                }
                cmd = "select * from coverform where UnNo='" + unno + "'";
                DataTable dadr = dm.SelectQuary(cmd);
                lblfc.Text = unno;
                lbladress.Text = dadr.Rows[0][7].ToString() + ", " + dadr.Rows[0][6].ToString() + ", " + dadr.Rows[0][5].ToString() + ", " + dadr.Rows[0][4].ToString() + ", " + dadr.Rows[0][3].ToString() + ", " + dadr.Rows[0][2].ToString();
                cmd = "select * from form3 where UnNo='" + unno + "' and c1='" + atid.ToString() + "'";
                DataTable dcunno = dm.SelectQuary(cmd);
                if (dcunno.Rows.Count > 0)
                {
                    label2.Text = dcunno.Rows[0][5].ToString();
                    label3.Text = dcunno.Rows[0][6].ToString();
                    label4.Text = dcunno.Rows[0][7].ToString();
                    label5.Text = dcunno.Rows[0][8].ToString();
                    label6a.Text = dcunno.Rows[0][9].ToString();
                    label6b.Text = dcunno.Rows[0][10].ToString();
                    label7.Text = dcunno.Rows[0][11].ToString();
                    label8.Text = dcunno.Rows[0][12].ToString();
                    label9.Text = dcunno.Rows[0][13].ToString();
                    label10a.Text = dcunno.Rows[0][14].ToString();
                    label10b.Text = dcunno.Rows[0][15].ToString();
                    label11a.Text = dcunno.Rows[0][16].ToString();
                    label11b.Text = dcunno.Rows[0][17].ToString();
                    label13.Text = dcunno.Rows[0][20].ToString();
                    label14.Text = dcunno.Rows[0][21].ToString();
                    label15a.Text = dcunno.Rows[0][22].ToString();
                    label15b.Text = dcunno.Rows[0][23].ToString();
                    label16.Text = dcunno.Rows[0][24].ToString();
                    label17.Text = dcunno.Rows[0][25].ToString();
                    label18.Text = dcunno.Rows[0][26].ToString();
                    label19.Text = dcunno.Rows[0][27].ToString();
                    label20.Text = dcunno.Rows[0][28].ToString();
                    label21.Text = dcunno.Rows[0][29].ToString();
                    label22.Text = dcunno.Rows[0][30].ToString();
                    label23.Text = dcunno.Rows[0][31].ToString();
                    label24.Text = dcunno.Rows[0][32].ToString();
                    label25.Text = dcunno.Rows[0][33].ToString();
                    label26a.Text = dcunno.Rows[0][34].ToString();
                    label26b.Text = dcunno.Rows[0][35].ToString();
                    label27a.Text = dcunno.Rows[0][36].ToString();
                    label27b.Text = dcunno.Rows[0][37].ToString();
                    label28.Text = dcunno.Rows[0][38].ToString();
                    label29.Text = dcunno.Rows[0][39].ToString();
                    label30a.Text = dcunno.Rows[0][40].ToString();
                    label30b.Text = dcunno.Rows[0][41].ToString();
                    label30c.Text = dcunno.Rows[0][42].ToString();
                    label31.Text = dcunno.Rows[0][43].ToString();
                    label32.Text = dcunno.Rows[0][44].ToString();
                    label33a.Text = dcunno.Rows[0][46].ToString();
                    label33b.Text = dcunno.Rows[0][47].ToString();
                    label33c.Text = dcunno.Rows[0][48].ToString();
                    label33d.Text = dcunno.Rows[0][49].ToString();
                    label33e.Text = dcunno.Rows[0][50].ToString();
                    label34a.Text = dcunno.Rows[0][52].ToString();
                    label34b.Text = dcunno.Rows[0][53].ToString();
                    label34c.Text = dcunno.Rows[0][54].ToString();
                    label34d.Text = dcunno.Rows[0][55].ToString();
                    label34e.Text = dcunno.Rows[0][56].ToString();
                    label35a.Text = dcunno.Rows[0][58].ToString();
                    label35b.Text = dcunno.Rows[0][59].ToString();
                    label35c.Text = dcunno.Rows[0][60].ToString();
                    label35d.Text = dcunno.Rows[0][61].ToString();
                    label35e.Text = dcunno.Rows[0][62].ToString();
                    label36.Text = dcunno.Rows[0][63].ToString();
                    label37.Text = dcunno.Rows[0][64].ToString();
                    picpreview.ImageUrl = "~/Form4Images/" + dcunno.Rows[0][18].ToString();
                    picpreview2.ImageUrl = "~/Form4Images/" + dcunno.Rows[0][19].ToString();
                    FileInfo fl = new FileInfo(Server.MapPath("~/Form4Images/" + dcunno.Rows[0][18].ToString()));
                    if (fl.Exists)
                        label12a.Text = "y";
                    else
                    {
                        label12a.Text = "n";
                    }
                    FileInfo fl2 = new FileInfo(Server.MapPath("~/Form4Images/" + dcunno.Rows[0][19].ToString()));
                    if (fl2.Exists)
                        label12b.Text = "y";
                    else
                    {
                        label12b.Text = "n";
                    }
                }
                else
                {

                }
            }
            else
            {
                Response.Redirect("Survye_Login");
            }
        }
    }

    protected void bbtn_Click(object sender, EventArgs e)
    {
		string unno = Request.QueryString["AppID"];
		Response.Redirect("Form_2_of_3?AppID=" + unno + "&AppID2=" + a.ToString() + "");
	}
    protected void jmpf1_Click(object sender, EventArgs e)
	{
		string unno = Request.QueryString["AppID"];
		Response.Redirect("Surveyor_Home?AppID=" + unno + "");
	}
    protected void jmpf2_Click(object sender, EventArgs e)
	{
		string unno = Request.QueryString["AppID"];
		Response.Redirect("Form_2_of_3?AppID=" + unno + "");
	}
    protected void jmpf3_Click(object sender, EventArgs e)
	{
		string unno = Request.QueryString["AppID"];
		Response.Redirect("Form_3_of_3?AppID=" + unno + "&AppID2=" + a.ToString() + "");
	}

    protected void nbtn_Click(object sender, EventArgs e)
    {
        string fa = "पिता", ma = "माता", ga = "अभिवावक";
        string unno = Request.QueryString["AppID"];
        string c1 = Request.QueryString["AppID2"];
        int atid = int.Parse(c1);
        int sno;
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
                cmd = "select * from form3 where UnNo='" + unno + "' and c1='" + atid.ToString() + "'";
                DataTable dcunno = dm.SelectQuary(cmd);
                if (dcunno.Rows.Count > 0)
                {
                    cmd = "update form3 set c2=N'" + txt2.Text.ToUpper().ToString() + "', c3=N'" + txt3.Text.ToUpper().ToString() + "', c4=N'" + txt4.Text.ToUpper().ToString() + "', c5=N'" + txt5.Text.ToUpper().ToString() + "', c6a=N'" + txt6a.SelectedValue.ToString() + "', c6b=N'" + txt6b.Text.ToString() + "', c7=N'" + txt7.SelectedValue.ToString() + "', c8=N'" + txt8.SelectedValue.ToString() + "', c9=N'" + txt9.SelectedValue.ToString() + "', c10a=N'" + txt10a.Text.ToUpper().ToString() + "', c10b=N'" + txt10b.Text.ToUpper().ToString() + "', c11a=N'" + txt11a.Text.ToUpper().ToString() + "', c11b=N'" + txt11b.Text.ToUpper().ToString() + "', c13=N'" + txt13.SelectedValue.ToString() + "', c14=N'" + txt14.Text.ToUpper().ToString() + "', c15a=N'" + txt15a.SelectedValue.ToString() + "', c15b=N'" + txt15b.SelectedValue.ToString() + "', c16=N'" + txt16.Text.ToUpper().ToString() + "', c17=N'" + txt17.Text.ToUpper().ToString() + "', c18=N'" + txt18.Text.ToUpper().ToString() + "', c19=N'" + txt19.Text.ToUpper().ToString() + "', c20=N'" + txt20.Text.ToUpper().ToString() + "', c21=N'" + txt21.SelectedValue.ToString() + "', c22=N'" + txt22.SelectedValue.ToString() + "', c23=N'" + txt23.Text.ToUpper().ToString() + "', c24=N'" + txt24.Text.ToUpper().ToString() + "', c25=N'" + txt25.SelectedValue.ToString() + "', c26a=N'" + txt26a.SelectedValue.ToString() + "', c26b=N'" + txt26b.Text.ToUpper().ToString() + "', c27a=N'" + txt27a.Text.ToUpper().ToString() + "', c27b=N'" + txt27b.Text.ToUpper().ToString() + "', c28=N'" + txt28.SelectedValue.ToString() + "', c29=N'" + txt29.Text.ToUpper().ToString() + "', c30a=N'" + txt30a.SelectedValue.ToString() + "', c30b=N'" + txt30b.SelectedValue.ToString() + "', c30c=N'" + txt30c.Text.ToUpper().ToString() + "', c31=N'" + txt31.Text.ToUpper().ToString() + "', c32=N'" + txt32.Text.ToUpper().ToString() + "', c33a=N'" + txt33a.SelectedValue.ToString() + "', c33b=N'" + txt33b.Text.ToUpper().ToString() + "', c33c=N'" + txt33c.Text.ToUpper().ToString() + "', c33d=N'" + txt33d.Text.ToUpper().ToString() + "', c33e=N'" + txt33e.Text.ToUpper().ToString() + "', c34a=N'" + txt34a.SelectedValue.ToString() + "', c34b=N'" + txt34b.Text.ToUpper().ToString() + "', c34c=N'" + txt34c.Text.ToUpper().ToString() + "', c34d=N'" + txt34d.Text.ToUpper().ToString() + "', c34e=N'" + txt34e.Text.ToUpper().ToString() + "', c35a=N'" + txt35a.SelectedValue.ToString() + "', c35b=N'" + txt35b.Text.ToUpper().ToString() + "', c35c=N'" + txt35c.Text.ToUpper().ToString() + "', c35d=N'" + txt35d.Text.ToUpper().ToString() + "', c35e=N'" + txt35e.Text.ToUpper().ToString() + "', c36=N'" + txt36.Text.ToUpper().ToString() + "', c37=N'" + txt37.SelectedValue.ToString() + "' where UnNo='" + unno + "' and c1='" + atid.ToString() + "'";
                    //, c12a=N'" + unno + "_F" + atid.ToString() + "-" + pic.FileName + "', c12b=N'"+ unno + "_S" + atid.ToString() + "-" + pic2.FileName + "'
                    if (dm.ExInsertUpdateorDelete(cmd))
                    {
                        /*FileInfo fl = new FileInfo(Server.MapPath("~/Form4Images/" + dcunno.Rows[0][18].ToString()));
                        if (fl.Exists)
                            fl.Delete();
                        FileInfo fl2 = new FileInfo(Server.MapPath("~/Form4Images/" + dcunno.Rows[0][19].ToString()));
                        if (fl2.Exists)
                            fl2.Delete();
                        pic.SaveAs(Server.MapPath("~/Form4Images/" + unno + "_F" + atid.ToString() + "-" + pic.FileName));
                        pic2.SaveAs(Server.MapPath("~/Form4Images/" + unno + "_S" + atid.ToString() + "-" + pic2.FileName));*/
                        string f = "Yes";
                        cmd = "update coverform set Final='" + f + "' where UnNo='" + unno + "'";
                        if (dm.ExInsertUpdateorDelete(cmd))
                        {
                            string n = "NewSetOfForm";
                            cmd = "WEbSite ForNCLP_SurveyWebApplicationBysamsberk";
                            Response.Redirect("Surveyor_Home?AppID=" + n + "&VirtualKey=" + cmd + "");
                        }
                        else
                        {
                            Response.Write("<script>alert('Could not process, Please try again.')</script>");
                        }
                    }
                    else
                    {
                        Response.Write("<script>alert('Something went wrong, please try again later.')</script>");
                    }
                }
                else
                {
                    cmd = "select * from form3";
                    DataTable df = dm.SelectQuary(cmd);
                    sno = df.Rows.Count + 1;
                    cmd = "insert into form3 values('" + sno.ToString() + "','" + unno + "','" + dsd.Rows[0][0].ToString() + "','" + DateTime.Now.ToString() + "',N'" + atid.ToString() + "',N'" + txt2.Text.ToUpper().ToString() + "',N'" + txt3.Text.ToUpper().ToString() + "',N'" + txt4.Text.ToUpper().ToString() + "',N'" + txt5.Text.ToUpper().ToString() + "',N'" + txt6a.SelectedValue.ToString() + "',N'" + txt6b.Text.ToString() + "',N'" + txt7.SelectedValue.ToString() + "',N'" + txt8.SelectedValue.ToString() + "',N'" + txt9.SelectedValue.ToString() + "',N'" + txt10a.Text.ToUpper().ToString() + "',N'" + txt10b.Text.ToUpper().ToString() + "',N'" + txt11a.Text.ToUpper().ToString() + "',N'" + txt11b.Text.ToUpper().ToString() + "',N'" + unno + "_F" + atid.ToString() + "-" + pic.FileName + "',N'" + unno + "_S" + atid.ToString() + "-" + pic2.FileName + "',N'" + txt13.SelectedValue.ToString() + "',N'" + txt14.Text.ToUpper().ToString() + "',N'" + txt15a.SelectedValue.ToString() + "',N'" + txt15b.SelectedValue.ToString() + "',N'" + txt16.Text.ToUpper().ToString() + "',N'" + txt17.Text.ToUpper().ToString() + "',N'" + txt18.Text.ToUpper().ToString() + "',N'" + txt19.Text.ToUpper().ToString() + "',N'" + txt20.Text.ToUpper().ToString() + "',N'" + txt21.SelectedValue.ToString() + "',N'" + txt22.SelectedValue.ToString() + "',N'" + txt23.Text.ToUpper().ToString() + "',N'" + txt24.Text.ToUpper().ToString() + "',N'" + txt25.SelectedValue.ToString() + "',N'" + txt26a.SelectedValue.ToString() + "',N'" + txt26b.Text.ToUpper().ToString() + "',N'" + txt27a.Text.ToUpper().ToString() + "',N'" + txt27b.Text.ToUpper().ToString() + "',N'" + txt28.SelectedValue.ToString() + "',N'" + txt29.Text.ToUpper().ToString() + "',N'" + txt30a.SelectedValue.ToString() + "',N'" + txt30b.SelectedValue.ToString() + "',N'" + txt30c.Text.ToUpper().ToString() + "',N'" + txt31.Text.ToUpper().ToString() + "',N'" + txt32.Text.ToUpper().ToString() + "',N'" + fa + "',N'" + txt33a.SelectedValue.ToString() + "',N'" + txt33b.Text.ToUpper().ToString() + "',N'" + txt33c.Text.ToUpper().ToString() + "',N'" + txt33d.Text.ToUpper().ToString() + "',N'" + txt33e.Text.ToUpper().ToString() + "',N'" + ma + "',N'" + txt34a.SelectedValue.ToString() + "',N'" + txt34b.Text.ToUpper().ToString() + "',N'" + txt34c.Text.ToUpper().ToString() + "',N'" + txt34d.Text.ToUpper().ToString() + "',N'" + txt34e.Text.ToUpper().ToString() + "',N'" + ga + "',N'" + txt35a.SelectedValue.ToString() + "',N'" + txt35b.Text.ToUpper().ToString() + "',N'" + txt35c.Text.ToUpper().ToString() + "',N'" + txt35d.Text.ToUpper().ToString() + "',N'" + txt35e.Text.ToUpper().ToString() + "',N'" + txt36.Text.ToUpper().ToString() + "',N'" + txt37.SelectedValue.ToString() + "')";
                    if (dm.ExInsertUpdateorDelete(cmd))
                    {
                        pic.SaveAs(Server.MapPath("~/Form4Images/" + unno + "_F" + atid.ToString() + "-" + pic.FileName));
                        pic2.SaveAs(Server.MapPath("~/Form4Images/" + unno + "_S" + atid.ToString() + "-" + pic2.FileName));
						string f = "Yes";
						cmd = "update coverform set Final='" + f + "' where UnNo='" + unno + "'";
						if (dm.ExInsertUpdateorDelete(cmd))
						{
							string n = "NewSetOfForm";
							cmd = "WEbSite ForNCLP_SurveyWebApplicationBysamsberk";
							Response.Redirect("Surveyor_Home?AppID=" + n + "&VirtualKey=" + cmd + "");
						}
						else
						{
							Response.Write("<script>alert('Could not process, Please try again.')</script>");
						}
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
    protected void onebtn_Click(object sender, EventArgs e)
    {
        string fa = "पिता", ma = "माता", ga = "अभिवावक";
        string unno = Request.QueryString["AppID"];
        string c1 = Request.QueryString["AppID2"];
        int atid = int.Parse(c1);
        int sno;
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
                cmd = "select * from form3 where UnNo='" + unno + "' and c1='" + atid.ToString() + "'";
                DataTable dcunno = dm.SelectQuary(cmd);
                if (dcunno.Rows.Count > 0)
                {
                    cmd = "update form3 set c2=N'" + txt2.Text.ToUpper().ToString() + "', c3=N'" + txt3.Text.ToUpper().ToString() + "', c4=N'" + txt4.Text.ToUpper().ToString() + "', c5=N'" + txt5.Text.ToUpper().ToString() + "', c6a=N'" + txt6a.SelectedValue.ToString() + "', c6b=N'" + txt6b.Text.ToString() + "', c7=N'" + txt7.SelectedValue.ToString() + "', c8=N'" + txt8.SelectedValue.ToString() + "', c9=N'" + txt9.SelectedValue.ToString() + "', c10a=N'" + txt10a.Text.ToUpper().ToString() + "', c10b=N'" + txt10b.Text.ToUpper().ToString() + "', c11a=N'" + txt11a.Text.ToUpper().ToString() + "', c11b=N'" + txt11b.Text.ToUpper().ToString() + "', c13=N'" + txt13.SelectedValue.ToString() + "', c14=N'" + txt14.Text.ToUpper().ToString() + "', c15a=N'" + txt15a.SelectedValue.ToString() + "', c15b=N'" + txt15b.SelectedValue.ToString() + "', c16=N'" + txt16.Text.ToUpper().ToString() + "', c17=N'" + txt17.Text.ToUpper().ToString() + "', c18=N'" + txt18.Text.ToUpper().ToString() + "', c19=N'" + txt19.Text.ToUpper().ToString() + "', c20=N'" + txt20.Text.ToUpper().ToString() + "', c21=N'" + txt21.SelectedValue.ToString() + "', c22=N'" + txt22.SelectedValue.ToString() + "', c23=N'" + txt23.Text.ToUpper().ToString() + "', c24=N'" + txt24.Text.ToUpper().ToString() + "', c25=N'" + txt25.SelectedValue.ToString() + "', c26a=N'" + txt26a.SelectedValue.ToString() + "', c26b=N'" + txt26b.Text.ToUpper().ToString() + "', c27a=N'" + txt27a.Text.ToUpper().ToString() + "', c27b=N'" + txt27b.Text.ToUpper().ToString() + "', c28=N'" + txt28.SelectedValue.ToString() + "', c29=N'" + txt29.Text.ToUpper().ToString() + "', c30a=N'" + txt30a.SelectedValue.ToString() + "', c30b=N'" + txt30b.SelectedValue.ToString() + "', c30c=N'" + txt30c.Text.ToUpper().ToString() + "', c31=N'" + txt31.Text.ToUpper().ToString() + "', c32=N'" + txt32.Text.ToUpper().ToString() + "', c33a=N'" + txt33a.SelectedValue.ToString() + "', c33b=N'" + txt33b.Text.ToUpper().ToString() + "', c33c=N'" + txt33c.Text.ToUpper().ToString() + "', c33d=N'" + txt33d.Text.ToUpper().ToString() + "', c33e=N'" + txt33e.Text.ToUpper().ToString() + "', c34a=N'" + txt34a.SelectedValue.ToString() + "', c34b=N'" + txt34b.Text.ToUpper().ToString() + "', c34c=N'" + txt34c.Text.ToUpper().ToString() + "', c34d=N'" + txt34d.Text.ToUpper().ToString() + "', c34e=N'" + txt34e.Text.ToUpper().ToString() + "', c35a=N'" + txt35a.SelectedValue.ToString() + "', c35b=N'" + txt35b.Text.ToUpper().ToString() + "', c35c=N'" + txt35c.Text.ToUpper().ToString() + "', c35d=N'" + txt35d.Text.ToUpper().ToString() + "', c35e=N'" + txt35e.Text.ToUpper().ToString() + "', c36=N'" + txt36.Text.ToUpper().ToString() + "', c37=N'" + txt37.SelectedValue.ToString() + "' where UnNo='" + unno + "' and c1='" + atid.ToString() + "'";
                    //, c12a=N'" + unno + "_F" + atid.ToString() + "-" + pic.FileName + "', c12b=N'" + unno + "_S" + atid.ToString() + "-" + pic2.FileName + "'
                    if (dm.ExInsertUpdateorDelete(cmd))
                    {
                        /*FileInfo fl = new FileInfo(Server.MapPath("~/Form4Images/" + dcunno.Rows[0][18].ToString()));
                        if (fl.Exists)
                            fl.Delete();
                        FileInfo fl2 = new FileInfo(Server.MapPath("~/Form4Images/" + dcunno.Rows[0][19].ToString()));
                        if (fl2.Exists)
                            fl2.Delete();
                        pic.SaveAs(Server.MapPath("~/Form4Images/" + unno + "_F" + atid.ToString() + "-" + pic.FileName));
                        pic2.SaveAs(Server.MapPath("~/Form4Images/" + unno + "_S" + atid.ToString() + "-" + pic2.FileName));*/
                        atid++;
                        Response.Redirect("Form_3_of_3?AppID=" + unno + "&AppID2=" + atid.ToString() + "");
                    }
                    else
                    {
                        Response.Write("<script>alert('Something went wrong, please try again later.')</script>");
                    }
                }
                else
                {
                    cmd = "select * from form3";
                    DataTable df = dm.SelectQuary(cmd);
                    sno = df.Rows.Count + 1;
                    cmd = "insert into form3 values('" + sno.ToString() + "','" + unno + "','" + dsd.Rows[0][0].ToString() + "','" + DateTime.Now.ToString() + "',N'" + atid.ToString() + "',N'" + txt2.Text.ToUpper().ToString() + "',N'" + txt3.Text.ToUpper().ToString() + "',N'" + txt4.Text.ToUpper().ToString() + "',N'" + txt5.Text.ToUpper().ToString() + "',N'" + txt6a.SelectedValue.ToString() + "',N'" + txt6b.Text.ToString() + "',N'" + txt7.SelectedValue.ToString() + "',N'" + txt8.SelectedValue.ToString() + "',N'" + txt9.SelectedValue.ToString() + "',N'" + txt10a.Text.ToUpper().ToString() + "',N'" + txt10b.Text.ToUpper().ToString() + "',N'" + txt11a.Text.ToUpper().ToString() + "',N'" + txt11b.Text.ToUpper().ToString() + "',N'" + unno + "_F" + atid.ToString() + "-" + pic.FileName + "',N'" + unno + "_S" + atid.ToString() + "-" + pic2.FileName + "',N'" + txt13.SelectedValue.ToString() + "',N'" + txt14.Text.ToUpper().ToString() + "',N'" + txt15a.SelectedValue.ToString() + "',N'" + txt15b.SelectedValue.ToString() + "',N'" + txt16.Text.ToUpper().ToString() + "',N'" + txt17.Text.ToUpper().ToString() + "',N'" + txt18.Text.ToUpper().ToString() + "',N'" + txt19.Text.ToUpper().ToString() + "',N'" + txt20.Text.ToUpper().ToString() + "',N'" + txt21.SelectedValue.ToString() + "',N'" + txt22.SelectedValue.ToString() + "',N'" + txt23.Text.ToUpper().ToString() + "',N'" + txt24.Text.ToUpper().ToString() + "',N'" + txt25.SelectedValue.ToString() + "',N'" + txt26a.SelectedValue.ToString() + "',N'" + txt26b.Text.ToUpper().ToString() + "',N'" + txt27a.Text.ToUpper().ToString() + "',N'" + txt27b.Text.ToUpper().ToString() + "',N'" + txt28.SelectedValue.ToString() + "',N'" + txt29.Text.ToUpper().ToString() + "',N'" + txt30a.SelectedValue.ToString() + "',N'" + txt30b.SelectedValue.ToString() + "',N'" + txt30c.Text.ToUpper().ToString() + "',N'" + txt31.Text.ToUpper().ToString() + "',N'" + txt32.Text.ToUpper().ToString() + "',N'" + fa + "',N'" + txt33a.SelectedValue.ToString() + "',N'" + txt33b.Text.ToUpper().ToString() + "',N'" + txt33c.Text.ToUpper().ToString() + "',N'" + txt33d.Text.ToUpper().ToString() + "',N'" + txt33e.Text.ToUpper().ToString() + "',N'" + ma + "',N'" + txt34a.SelectedValue.ToString() + "',N'" + txt34b.Text.ToUpper().ToString() + "',N'" + txt34c.Text.ToUpper().ToString() + "',N'" + txt34d.Text.ToUpper().ToString() + "',N'" + txt34e.Text.ToUpper().ToString() + "',N'" + ga + "',N'" + txt35a.SelectedValue.ToString() + "',N'" + txt35b.Text.ToUpper().ToString() + "',N'" + txt35c.Text.ToUpper().ToString() + "',N'" + txt35d.Text.ToUpper().ToString() + "',N'" + txt35e.Text.ToUpper().ToString() + "',N'" + txt36.Text.ToUpper().ToString() + "',N'" + txt37.SelectedValue.ToString() + "')";
                    if (dm.ExInsertUpdateorDelete(cmd))
                    {
                        pic.SaveAs(Server.MapPath("~/Form4Images/" + unno + "_F" + atid.ToString() + "-" + pic.FileName));
                        pic2.SaveAs(Server.MapPath("~/Form4Images/" + unno + "_S" + atid.ToString() + "-" + pic2.FileName));
                        atid++;
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

    protected void skipbtn_Click(object sender, EventArgs e)
    {
        string unno = Request.QueryString["AppID"];
        Response.Redirect("Form_5_of_3?AppID=" + unno + "&AppID2=" + a.ToString() + "");
    }

    protected void uplink_Click(object sender, EventArgs e)
    {
        string unno = Request.QueryString["AppID"];
        string c1 = Request.QueryString["AppID2"];
        Response.Redirect("Update_Picture?AppID=" + unno + "&AppID2=" + c1 + "");
    }
}