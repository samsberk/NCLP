﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Surveyor_Zone_TempFifthForm : System.Web.UI.Page
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
            cmd = "select * from Surveyor where EmailID='" + scok + "'";
            DataTable dsd = dm.SelectQuary(cmd);
            if (dsd.Rows.Count > 0)
            {
                string unno = em.DecryptMyData(Request.QueryString["AppID"]);
                string c1 = em.DecryptMyData(Request.QueryString["AppID2"]);
                int atid = int.Parse(c1);
                txt1.Text = c1;
                cmd = "select * from Form5 where UnNo='" + unno + "' and c1='" + c1 + "'";
                DataTable dcunno = dm.SelectQuary(cmd);
                if (dcunno.Rows.Count > 0)
                {
                    label2.Text = dcunno.Rows[0][5].ToString();
                    label3.Text = dcunno.Rows[0][6].ToString();
                    label4.Text = dcunno.Rows[0][7].ToString();
                    label5.Text = dcunno.Rows[0][8].ToString();
                    label6.Text = dcunno.Rows[0][9].ToString();
                    label7.Text = dcunno.Rows[0][10].ToString();
                    label8.Text = dcunno.Rows[0][11].ToString();
                    label9.Text = dcunno.Rows[0][12].ToString();
                    label10.Text = dcunno.Rows[0][13].ToString();
                    label11.Text = dcunno.Rows[0][14].ToString();
                    label12.Text = dcunno.Rows[0][15].ToString();
                    label13.Text = dcunno.Rows[0][16].ToString();
                }
                else
                {

                }
            }
            else
            {
                Response.Redirect("Home");
            }
        }
    }

    protected void bbtn_Click(object sender, EventArgs e)
    {
        string unno = em.DecryptMyData(Request.QueryString["AppID"]);
        Response.Redirect("Form_4_of_6?AppID=" + em.EncryptMyData(unno) + "&AppID2=" + em.EncryptMyData(a.ToString()) + "");
    }

    protected void nbtn_Click(object sender, EventArgs e)
    {
        string unno = em.DecryptMyData(Request.QueryString["AppID"]);
        string c1 = em.DecryptMyData(Request.QueryString["AppID2"]);
        int atid = int.Parse(c1);
        int sno;
        string scok = Request.Cookies["surveyor"].Value;
        if (scok == null)
        {

        }
        else
        {
            cmd = "select * from Surveyor where EmailID='" + scok + "'";
            DataTable dsd = dm.SelectQuary(cmd);
            if (dsd.Rows.Count > 0)
            {
                cmd = "select * from Form5 where UnNo='" + unno + "' and c1='" + atid.ToString() + "'";
                DataTable dcunno = dm.SelectQuary(cmd);
                if (dcunno.Rows.Count > 0)
                {
                    cmd = "update Form5 set c2=N'" + txt2.Text.ToUpper().ToString() + "', c3=N'" + txt3.SelectedValue.ToString() + "', c4=N'" + txt4.Text.ToUpper().ToString() + "', c5=N'" + txt5.Text.ToUpper().ToString() + "', c6=N'" + txt6.Text.ToUpper().ToString() + "', c7=N'" + txt7.Text.ToUpper().ToString() + "', c8=N'" + txt8.Text.ToUpper().ToString() + "', c9=N'" + txt9.Text.ToUpper().ToString() + "', c10=N'" + txt10.SelectedValue.ToString() + "', c11=N'" + txt11.SelectedValue.ToString() + "', c12=N'" + txt12.SelectedValue.ToString() + "', c13=N'" + txt13.Text.ToUpper().ToString() + "' where UnNo='" + unno + "' and c1='" + atid.ToString() + "'";
                    if (dm.ExInsertUpdateorDelete(cmd))
                    {
                        Response.Redirect("Form_6_of_6?AppID=" + em.EncryptMyData(unno) + "&AppID2=" + em.EncryptMyData(a.ToString()) + "");
                    }
                    else
                    {
                        Response.Write("<script>alert('Something went wrong, please try again later.')</script>");
                    }
                }
                else
                {
                    cmd = "select * from Form5";
                    DataTable df = dm.SelectQuary(cmd);
                    sno = df.Rows.Count + 1;
                    cmd = "insert into Form5 values('" + sno.ToString() + "','" + unno + "','" + dsd.Rows[0][0].ToString() + "','" + DateTime.Now.ToString() + "',N'" + atid.ToString() + "',N'" + txt2.Text.ToUpper().ToString() + "',N'" + txt3.SelectedValue.ToString() + "',N'" + txt4.Text.ToUpper().ToString() + "',N'" + txt5.Text.ToUpper().ToString() + "',N'" + txt6.Text.ToUpper().ToString() + "',N'" + txt7.Text.ToUpper().ToString() + "',N'" + txt8.Text.ToUpper().ToString() + "',N'" + txt9.Text.ToUpper().ToString() + "',N'" + txt10.SelectedValue.ToString() + "',N'" + txt11.SelectedValue.ToString() + "',N'" + txt12.SelectedValue.ToString() + "',N'" + txt13.Text.ToUpper().ToString() + "')";
                    if (dm.ExInsertUpdateorDelete(cmd))
                    {
                        Response.Redirect("Form_6_of_6?AppID=" + em.EncryptMyData(unno) + "&AppID2=" + em.EncryptMyData(a.ToString()) + "");
                    }
                    else
                    {
                        Response.Write("<script>alert('Something went wrong, please try again later.')</script>");
                    }
                }
            }
            else
            {
                Response.Redirect("Home");
            }
        }
    }

    protected void onebtn_Click(object sender, EventArgs e)
    {
        string unno = em.DecryptMyData(Request.QueryString["AppID"]);
        string c1 = em.DecryptMyData(Request.QueryString["AppID2"]);
        int atid = int.Parse(c1);
        int sno;
        string scok = Request.Cookies["surveyor"].Value;
        if (scok == null)
        {

        }
        else
        {
            cmd = "select * from Surveyor where EmailID='" + scok + "'";
            DataTable dsd = dm.SelectQuary(cmd);
            if (dsd.Rows.Count > 0)
            {
                cmd = "select * from Form5 where UnNo='" + unno + "' and c1='" + atid.ToString() + "'";
                DataTable dcunno = dm.SelectQuary(cmd);
                if (dcunno.Rows.Count > 0)
                {
                    cmd = "update Form5 set c2=N'" + txt2.Text.ToUpper().ToString() + "', c3=N'" + txt3.SelectedValue.ToString() + "', c4=N'" + txt4.Text.ToUpper().ToString() + "', c5=N'" + txt5.Text.ToUpper().ToString() + "', c6=N'" + txt6.Text.ToUpper().ToString() + "', c7=N'" + txt7.Text.ToUpper().ToString() + "', c8=N'" + txt8.Text.ToUpper().ToString() + "', c9=N'" + txt9.Text.ToUpper().ToString() + "', c10=N'" + txt10.SelectedValue.ToString() + "', c11=N'" + txt11.SelectedValue.ToString() + "', c12=N'" + txt12.SelectedValue.ToString() + "', c13=N'" + txt13.Text.ToUpper().ToString() + "' where UnNo='" + unno + "' and c1='" + atid.ToString() + "'";
                    if (dm.ExInsertUpdateorDelete(cmd))
                    {
                        atid++;
                        Response.Redirect("Form_5_of_6?AppID=" + em.EncryptMyData(unno) + "&AppID2=" + em.EncryptMyData(atid.ToString()) + "");
                    }
                    else
                    {
                        Response.Write("<script>alert('Something went wrong, please try again later.')</script>");
                    }
                }
                else
                {
                    cmd = "select * from Form5";
                    DataTable df = dm.SelectQuary(cmd);
                    sno = df.Rows.Count + 1;
                    cmd = "insert into Form5 values('" + sno.ToString() + "','" + unno + "','" + dsd.Rows[0][0].ToString() + "','" + DateTime.Now.ToString() + "',N'" + atid.ToString() + "',N'" + txt2.Text.ToUpper().ToString() + "',N'" + txt3.SelectedValue.ToString() + "',N'" + txt4.Text.ToUpper().ToString() + "',N'" + txt5.Text.ToUpper().ToString() + "',N'" + txt6.Text.ToUpper().ToString() + "',N'" + txt7.Text.ToUpper().ToString() + "',N'" + txt8.Text.ToUpper().ToString() + "',N'" + txt9.Text.ToUpper().ToString() + "',N'" + txt10.SelectedValue.ToString() + "',N'" + txt11.SelectedValue.ToString() + "',N'" + txt12.SelectedValue.ToString() + "',N'" + txt13.Text.ToUpper().ToString() + "')";
                    if (dm.ExInsertUpdateorDelete(cmd))
                    {
                        atid++;
                        Response.Redirect("Form_5_of_6?AppID=" + em.EncryptMyData(unno) + "&AppID2=" + em.EncryptMyData(atid.ToString()) + "");
                    }
                    else
                    {
                        Response.Write("<script>alert('Something went wrong, please try again later.')</script>");
                    }
                }
            }
            else
            {
                Response.Redirect("Home");
            }
        }
    }

    protected void skipbtn_Click(object sender, EventArgs e)
    {
        string unno = em.DecryptMyData(Request.QueryString["AppID"]);
        Response.Redirect("Form_6_of_6?AppID=" + em.EncryptMyData(unno) + "&AppID2=" + em.EncryptMyData(a.ToString()) + "");
    }
}