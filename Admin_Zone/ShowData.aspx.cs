using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;

public partial class Admin_Zone_ShowData : System.Web.UI.Page
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
            string str = Request.QueryString["For"].ToString();
            cmd = "select * from coverform where UnNo='" + str + "'";
            DataTable dcf = dm.SelectQuary(cmd);
            if(dcf.Rows.Count>0)
            {
                f1l1.Text = dcf.Rows[0][0].ToString();
                f1l2.Text = dcf.Rows[0][1].ToString();
                f1l3.Text = dcf.Rows[0][2].ToString();
                f1l4.Text = dcf.Rows[0][3].ToString();
                f1l5.Text = dcf.Rows[0][4].ToString();
                f1l6.Text = dcf.Rows[0][5].ToString();
                f1l7.Text = dcf.Rows[0][6].ToString();
                f1l8.Text = dcf.Rows[0][7].ToString();
                f1l9.Text = dcf.Rows[0][8].ToString();
                f1l10.Text = dcf.Rows[0][9].ToString();
                f1l11.Text = dcf.Rows[0][11].ToString();
            }
            cmd = "select * from form2 where UnNo='" + str + "'";
            DataTable dff = dm.SelectQuary(cmd);
            if(dff.Rows.Count>0)
            {
                f2l1.Text = dff.Rows[0][4].ToString();
                f2l2.Text = dff.Rows[0][5].ToString();
                f2l3.Text = dff.Rows[0][6].ToString();
                f2l4.Text = dff.Rows[0][7].ToString();
                f2l5.Text = dff.Rows[0][8].ToString();
                f2l6.Text = dff.Rows[0][9].ToString();
                f2l7.Text = dff.Rows[0][10].ToString();
                f2l8.Text = dff.Rows[0][11].ToString();
				f2l81.Text = dff.Rows[0][12].ToString();
				f2l82.Text = dff.Rows[0][13].ToString();
				f2l83.Text = dff.Rows[0][14].ToString();
				f2l801.Text = dff.Rows[0][15].ToString();
				f2l802.Text = dff.Rows[0][16].ToString();
				f2l803.Text = dff.Rows[0][17].ToString();
				f2l91.Text = dff.Rows[0][18].ToString();
				f2l92.Text = dff.Rows[0][19].ToString();
				f2l93.Text = dff.Rows[0][20].ToString();
				f2l901.Text = dff.Rows[0][21].ToString();
				f2l902.Text = dff.Rows[0][22].ToString();
				f2l903.Text = dff.Rows[0][23].ToString();
				f2l10.Text = dff.Rows[0][24].ToString();
				f2l11.Text = dff.Rows[0][25].ToString();
				f2l30.Text = dff.Rows[0][3].ToString();
            }
            //cmd = "select * from Form3 where UnNo='" + str + "'";
            //DataTable dft = dm.SelectQuary(cmd);
            //if (dft.Rows.Count > 0)
            //{
            //    for(int a=0; a<dft.Rows.Count;a++)
            //    {
            //        f3placeholder.Controls.Add(new Literal() { Text = "<tr><td>"+dft.Rows[a][4].ToString()+ "</td><td>" + dft.Rows[a][5].ToString() + "</td><td>" + dft.Rows[a][6].ToString() + "</td><td>" + dft.Rows[a][7].ToString() + "</td><td>" + dft.Rows[a][8].ToString() + "</td><td>" + dft.Rows[a][9].ToString() + "</td><td>" + dft.Rows[a][10].ToString() + "</td><td>" + dft.Rows[a][11].ToString() + "</td><td>" + dft.Rows[a][12].ToString() + "</td><td>" + dft.Rows[a][13].ToString() + "</td><td>" + dft.Rows[a][14].ToString() + "</td><td>" + dft.Rows[a][15].ToString() + "</td><td>" + dft.Rows[a][16].ToString() + "</td><td>" + dft.Rows[a][17].ToString() + "</td><td>" + dft.Rows[a][18].ToString() + "</td></tr>" });
            //    }
            //}
            cmd = "select * from form3 where UnNo='" + str + "'";
            DataTable dffff = dm.SelectQuary(cmd);
            if (dffff.Rows.Count > 0)
            {
                f4l1.Text = dffff.Rows[0][4].ToString();
                f4l2.Text = dffff.Rows[0][5].ToString();
                f4l3.Text = dffff.Rows[0][6].ToString();
                f4l4.Text = dffff.Rows[0][7].ToString();
                f4l5.Text = dffff.Rows[0][8].ToString();
                f4l6.Text = dffff.Rows[0][9].ToString();
                f4l7.Text = dffff.Rows[0][10].ToString();
                f4l8.Text = dffff.Rows[0][11].ToString();
                f4l9.Text = dffff.Rows[0][12].ToString();
                f4l10.Text = dffff.Rows[0][13].ToString();
                f4l11.Text = dffff.Rows[0][14].ToString();
                f4l12.Text = dffff.Rows[0][15].ToString();
                f4l13.Text = dffff.Rows[0][16].ToString();
                f4l14.Text = dffff.Rows[0][17].ToString();
                f4l15.Text = dffff.Rows[0][20].ToString();
                f4l16.Text = dffff.Rows[0][21].ToString();
                f4l17.Text = dffff.Rows[0][22].ToString();
                f4l17b.Text = dffff.Rows[0][23].ToString();
                f4l18.Text = dffff.Rows[0][24].ToString();
                f4l19.Text = dffff.Rows[0][25].ToString();
                f4l20.Text = dffff.Rows[0][26].ToString();
                f4l21.Text = dffff.Rows[0][27].ToString();
                f4l22.Text = dffff.Rows[0][28].ToString();
                f4l23.Text = dffff.Rows[0][29].ToString();
                f4l24.Text = dffff.Rows[0][30].ToString();
                f4l25.Text = dffff.Rows[0][31].ToString();
                f4l26.Text = dffff.Rows[0][32].ToString();
                f4l27.Text = dffff.Rows[0][33].ToString();
                f4l28.Text = dffff.Rows[0][34].ToString();
                f4l29.Text = dffff.Rows[0][35].ToString();
                f4l30.Text = dffff.Rows[0][36].ToString();
                f4l30b.Text = dffff.Rows[0][37].ToString();
                f4l31.Text = dffff.Rows[0][38].ToString();
                f4l32.Text = dffff.Rows[0][39].ToString();
                f4l33.Text = dffff.Rows[0][40].ToString();
                f4l33b.Text = dffff.Rows[0][41].ToString();
                f4l33c.Text = dffff.Rows[0][42].ToString();
                f4l34.Text = dffff.Rows[0][43].ToString();
                f4l35.Text = dffff.Rows[0][44].ToString();
                f4l36.Text = dffff.Rows[0][45].ToString();
                f4l37.Text = dffff.Rows[0][46].ToString();
                f4l38.Text = dffff.Rows[0][47].ToString();
                f4l39.Text = dffff.Rows[0][48].ToString();
                f4l40.Text = dffff.Rows[0][49].ToString();
                f4l41.Text = dffff.Rows[0][50].ToString();
                f4l42.Text = dffff.Rows[0][51].ToString();
                f4l43.Text = dffff.Rows[0][52].ToString();
                f4l44.Text = dffff.Rows[0][53].ToString();
                f4l45.Text = dffff.Rows[0][54].ToString();
                f4l46.Text = dffff.Rows[0][55].ToString();
                f4l47.Text = dffff.Rows[0][56].ToString();
                f4l48.Text = dffff.Rows[0][57].ToString();
                f4l49.Text = dffff.Rows[0][58].ToString();
                f4l50.Text = dffff.Rows[0][59].ToString();
                f4l51.Text = dffff.Rows[0][60].ToString();
                f4l52.Text = dffff.Rows[0][61].ToString();
                f4l53.Text = dffff.Rows[0][62].ToString();
                f4l54.Text = dffff.Rows[0][63].ToString();
                f4l55.Text = dffff.Rows[0][64].ToString();
                f4l56.Text = dffff.Rows[0][3].ToString();
                pic1.ImageUrl = "~/Form4Images/" + dffff.Rows[0][18].ToString();
                pic2.ImageUrl = "~/Form4Images/" + dffff.Rows[0][19].ToString();
            }
            //cmd = "select * from Form5 where UnNo='" + str + "'";
            //DataTable dfft = dm.SelectQuary(cmd);
            //if (dfft.Rows.Count > 0)
            //{
            //    for (int a = 0; a < dfft.Rows.Count; a++)
            //    {
            //        f5placeholder.Controls.Add(new Literal() { Text = "<tr><td>" + dfft.Rows[a][4].ToString() + "</td><td>" + dfft.Rows[a][5].ToString() + "</td><td>" + dfft.Rows[a][6].ToString() + "</td><td>" + dfft.Rows[a][7].ToString() + "</td><td>" + dfft.Rows[a][8].ToString() + "</td><td>" + dfft.Rows[a][9].ToString() + "</td><td>" + dfft.Rows[a][10].ToString() + "</td><td>" + dfft.Rows[a][11].ToString() + "</td><td>" + dfft.Rows[a][12].ToString() + "</td><td>" + dfft.Rows[a][13].ToString() + "</td></tr>" });
            //    }
            //}

        }
        else
        {
            Response.Redirect("Survey_Login");
        }
    }

    protected void updatebtn_Click(object sender, EventArgs e)
    {
        string scok = Request.Cookies["admin"].Value;
        cmd = "select * from admin where EmailID='" + scok + "'";
        DataTable dad = dm.SelectQuary(cmd);
        if (dad.Rows.Count > 0)
        {
            string str = Request.QueryString["For"].ToString();
            HttpCookie scook = new HttpCookie("surveyor");
            scook.Value = scok.ToString();
            scook.Expires = DateTime.Now.AddDays(30);
            Response.Cookies.Add(scook);
			Response.Redirect("Surveyor_Home?AppID=" + str + "");
        }
        else
        {
            Response.Redirect("Survey_Login");
        }
    }
}