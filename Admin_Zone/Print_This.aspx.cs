using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;

public partial class Admin_Zone_Print_This : System.Web.UI.Page
{
	string cmd, tf = "None", prm = "None", gen="None";
    int i, ct = 0;
    float per=0;
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
			tf = Request.QueryString["Table_For"].ToString();
			if (tf == "table1")
			{
				informer.Text = "table1";
				cmd = "select * from form3";
				DataTable df3 = dm.SelectQuary(cmd);
                int c1 = 0, c2 = 0;

                prm = "6";
                gen = "हाँ";
                cmd = "select * from form3 where c4='" + prm + "' and c7='" + gen + "'";
                DataTable dtt1111 = dm.SelectQuary(cmd);
                gen = "नहीं";
                cmd = "select * from form3 where c4='" + prm + "' and c7='" + gen + "'";
                DataTable dtt1112 = dm.SelectQuary(cmd);
                cmd = "select * from form3 where c4='" + prm + "'";
                DataTable dtt1113 = dm.SelectQuary(cmd);
                ct = dtt1113.Rows.Count;
                prm = "7";
                gen = "हाँ";
                cmd = "select * from form3 where c4='" + prm + "' and c7='" + gen + "'";
                DataTable dtt2111 = dm.SelectQuary(cmd);
                c1 = (dtt2111.Rows.Count) + (dtt1111.Rows.Count);
                l111.Text = c1.ToString();
                gen = "नहीं";
                cmd = "select * from form3 where c4='" + prm + "' and c7='" + gen + "'";
                DataTable dtt2112 = dm.SelectQuary(cmd);
                c2 = (dtt2112.Rows.Count) + (dtt1112.Rows.Count);
                l112.Text = c2.ToString();
                cmd = "select * from form3 where c4='" + prm + "'";
                DataTable dtt2113 = dm.SelectQuary(cmd);
                ct = ct + dtt2113.Rows.Count;
                l113.Text = ct.ToString();

                c1 = 0;
                c2 = 0;
                prm = "8";
                gen = "हाँ";
                cmd = "select * from form3 where c4='" + prm + "' and c7='" + gen + "'";
                DataTable dtt1121 = dm.SelectQuary(cmd);
                gen = "नहीं";
                cmd = "select * from form3 where c4='" + prm + "' and c7='" + gen + "'";
                DataTable dtt1122 = dm.SelectQuary(cmd);
                cmd = "select * from form3 where c4='" + prm + "'";
                DataTable dtt1123 = dm.SelectQuary(cmd);
                ct = dtt1123.Rows.Count;
                prm = "9";
                gen = "हाँ";
                cmd = "select * from form3 where c4='" + prm + "' and c7='" + gen + "'";
                DataTable dtt2121 = dm.SelectQuary(cmd);
                c1 = (dtt2121.Rows.Count) + (dtt1121.Rows.Count);
                l121.Text = c1.ToString();
                gen = "नहीं";
                cmd = "select * from form3 where c4='" + prm + "' and c7='" + gen + "'";
                DataTable dtt2122 = dm.SelectQuary(cmd);
                c2 = (dtt2122.Rows.Count) + (dtt1122.Rows.Count);
                l122.Text = c2.ToString();
                cmd = "select * from form3 where c4='" + prm + "'";
                DataTable dtt2123 = dm.SelectQuary(cmd);
                ct = ct + dtt2123.Rows.Count;
                l123.Text = ct.ToString();

                c1 = 0;
                c2 = 0;
                prm = "10";
                gen = "हाँ";
                cmd = "select * from form3 where c4='" + prm + "' and c7='" + gen + "'";
                DataTable dtt1131 = dm.SelectQuary(cmd);
                gen = "नहीं";
                cmd = "select * from form3 where c4='" + prm + "' and c7='" + gen + "'";
                DataTable dtt1132 = dm.SelectQuary(cmd);
                cmd = "select * from form3 where c4='" + prm + "'";
                DataTable dtt1133 = dm.SelectQuary(cmd);
                ct = dtt1133.Rows.Count;
                prm = "11";
                gen = "हाँ";
                cmd = "select * from form3 where c4='" + prm + "' and c7='" + gen + "'";
                DataTable dtt2131 = dm.SelectQuary(cmd);
                c1 = (dtt2131.Rows.Count) + (dtt1131.Rows.Count);
                l131.Text = c1.ToString();
                gen = "नहीं";
                cmd = "select * from form3 where c4='" + prm + "' and c7='" + gen + "'";
                DataTable dtt2132 = dm.SelectQuary(cmd);
                c2 = (dtt2122.Rows.Count) + (dtt1132.Rows.Count);
                l132.Text = c2.ToString();
                cmd = "select * from form3 where c4='" + prm + "'";
                DataTable dtt2133 = dm.SelectQuary(cmd);
                ct = ct + dtt2133.Rows.Count;
                l133.Text = ct.ToString();
                
                c1 = 0;
                c2 = 0;
                prm = "12";
                gen = "हाँ";
                cmd = "select * from form3 where c4='" + prm + "' and c7='" + gen + "'";
                DataTable dtt1141 = dm.SelectQuary(cmd);
                gen = "नहीं";
                cmd = "select * from form3 where c4='" + prm + "' and c7='" + gen + "'";
                DataTable dtt1142 = dm.SelectQuary(cmd);
                cmd = "select * from form3 where c4='" + prm + "'";
                DataTable dtt1143 = dm.SelectQuary(cmd);
                ct = dtt1143.Rows.Count;
                prm = "13";
                gen = "हाँ";
                cmd = "select * from form3 where c4='" + prm + "' and c7='" + gen + "'";
                DataTable dtt2141 = dm.SelectQuary(cmd);
                c1 = (dtt2141.Rows.Count) + (dtt1141.Rows.Count);
                l141.Text = c1.ToString();
                gen = "नहीं";
                cmd = "select * from form3 where c4='" + prm + "' and c7='" + gen + "'";
                DataTable dtt2142 = dm.SelectQuary(cmd);
                c2 = (dtt2142.Rows.Count) + (dtt1142.Rows.Count);
                l142.Text = c2.ToString();
                cmd = "select * from form3 where c4='" + prm + "'";
                DataTable dtt2143 = dm.SelectQuary(cmd);
                ct = ct + dtt2143.Rows.Count;
                l143.Text = ct.ToString();

                prm = "14";
                gen = "हाँ";
                cmd = "select * from form3 where c4='" + prm + "' and c7='" + gen + "'";
                DataTable dtt151 = dm.SelectQuary(cmd);
                l151.Text = dtt151.Rows.Count.ToString();
                gen = "नहीं";
                cmd = "select * from form3 where c4='" + prm + "' and c7='" + gen + "'";
                DataTable dtt152 = dm.SelectQuary(cmd);
                l152.Text = dtt152.Rows.Count.ToString();
                cmd = "select * from form3 where c4='" + prm + "'";
                DataTable dtt5 = dm.SelectQuary(cmd);
                l153.Text = dtt5.Rows.Count.ToString();



                //Old before modify-------------------------------------------------------------------------------

                //prm = "7";
                //gen = "हाँ";
                //cmd = "select * from form3 where c4='" + prm + "' and c7='" + gen + "'";
                //DataTable dtt111 = dm.SelectQuary(cmd);
                //gen = "नहीं";
                //cmd = "select * from form3 where c4='" + prm + "' and c7='" + gen + "'";
                //DataTable dtt112 = dm.SelectQuary(cmd);
                //cmd = "select * from form3 where c4='" + prm + "'";
                //DataTable dtt1 = dm.SelectQuary(cmd);
                //l111.Text = dtt111.Rows.Count.ToString();
                //l112.Text = dtt112.Rows.Count.ToString();
                //l113.Text = dtt1.Rows.Count.ToString();
                //per = (float)(dtt1.Rows.Count * 100) / df3.Rows.Count;
                //l113.Text = dtt1.Rows.Count.ToString() + "   { " + Math.Round(per, 2).ToString() + " % }";
                //per = (float)(dtt111.Rows.Count * 100) / df3.Rows.Count;
                //l111.Text = dtt111.Rows.Count.ToString() + "   { " + Math.Round(per, 2).ToString() + " % }";
                //per = (float)(dtt112.Rows.Count * 100) / df3.Rows.Count;
                //l112.Text = dtt112.Rows.Count.ToString() + "   { " + Math.Round(per, 2).ToString() + " % }";

                //            prm = "8";
                //            gen = "हाँ";
                //            cmd = "select * from form3 where c4='" + prm + "' and c7='" + gen + "'";
                //            DataTable dtt121 = dm.SelectQuary(cmd);
                //            gen = "नहीं";
                //            cmd = "select * from form3 where c4='" + prm + "' and c7='" + gen + "'";
                //            DataTable dtt122 = dm.SelectQuary(cmd);
                //            cmd = "select * from form3 where c4='" + prm + "'";
                //DataTable dtt2 = dm.SelectQuary(cmd);
                //            l121.Text = dtt121.Rows.Count.ToString();
                //            l122.Text = dtt122.Rows.Count.ToString();
                //            l123.Text = dtt2.Rows.Count.ToString();
                //per = (dtt121.Rows.Count * 100) / dtt2.Rows.Count;
                //l121.Text = dtt121.Rows.Count.ToString() + " (" + Math.Round(per, 2).ToString() + " %)";
                //per = 100 - per;
                //l122.Text = dtt122.Rows.Count.ToString() + " (" + Math.Round(per, 2).ToString() + " %)";

                //            prm = "9";
                //            gen = "हाँ";
                //            cmd = "select * from form3 where c4='" + prm + "' and c7='" + gen + "'";
                //            DataTable dtt131 = dm.SelectQuary(cmd);
                //            l131.Text = dtt131.Rows.Count.ToString();
                //            gen = "नहीं";
                //            cmd = "select * from form3 where c4='" + prm + "' and c7='" + gen + "'";
                //            DataTable dtt132 = dm.SelectQuary(cmd);
                //            l132.Text = dtt132.Rows.Count.ToString();
                //            cmd = "select * from form3 where c4='" + prm + "'";
                //DataTable dtt3 = dm.SelectQuary(cmd);
                //l133.Text = dtt3.Rows.Count.ToString();

                //prm = "10";
                //            gen = "हाँ";
                //            cmd = "select * from form3 where c4='" + prm + "' and c7='" + gen + "'";
                //            DataTable dtt141 = dm.SelectQuary(cmd);
                //            l141.Text = dtt141.Rows.Count.ToString();
                //            gen = "नहीं";
                //            cmd = "select * from form3 where c4='" + prm + "' and c7='" + gen + "'";
                //            DataTable dtt142 = dm.SelectQuary(cmd);
                //            l142.Text = dtt142.Rows.Count.ToString();
                //            cmd = "select * from form3 where c4='" + prm + "'";
                //DataTable dtt4 = dm.SelectQuary(cmd);
                //l143.Text = dtt4.Rows.Count.ToString();

                //prm = "11";
                //            gen = "हाँ";
                //            cmd = "select * from form3 where c4='" + prm + "' and c7='" + gen + "'";
                //            DataTable dtt151 = dm.SelectQuary(cmd);
                //            l151.Text = dtt151.Rows.Count.ToString();
                //            gen = "नहीं";
                //            cmd = "select * from form3 where c4='" + prm + "' and c7='" + gen + "'";
                //            DataTable dtt152 = dm.SelectQuary(cmd);
                //            l152.Text = dtt152.Rows.Count.ToString();
                //            cmd = "select * from form3 where c4='" + prm + "'";
                //DataTable dtt5 = dm.SelectQuary(cmd);
                //l153.Text = dtt5.Rows.Count.ToString();

                //prm = "12";
                //            gen = "हाँ";
                //            cmd = "select * from form3 where c4='" + prm + "' and c7='" + gen + "'";
                //            DataTable dtt161 = dm.SelectQuary(cmd);
                //            l161.Text = dtt161.Rows.Count.ToString();
                //            gen = "नहीं";
                //            cmd = "select * from form3 where c4='" + prm + "' and c7='" + gen + "'";
                //            DataTable dtt162 = dm.SelectQuary(cmd);
                //            l162.Text = dtt162.Rows.Count.ToString();
                //            cmd = "select * from form3 where c4='" + prm + "'";
                //DataTable dtt6 = dm.SelectQuary(cmd);
                //l163.Text = dtt6.Rows.Count.ToString();

                //prm = "13";
                //            gen = "हाँ";
                //            cmd = "select * from form3 where c4='" + prm + "' and c7='" + gen + "'";
                //            DataTable dtt171 = dm.SelectQuary(cmd);
                //            gen = "नहीं";
                //            cmd = "select * from form3 where c4='" + prm + "' and c7='" + gen + "'";
                //            DataTable dtt172 = dm.SelectQuary(cmd);
                //            cmd = "select * from form3 where c4='" + prm + "'";
                //DataTable dtt7 = dm.SelectQuary(cmd);
                //ct = dtt7.Rows.Count;

                //prm = "14";
                //            gen = "हाँ";
                //            cmd = "select * from form3 where c4='" + prm + "' and c7='" + gen + "'";
                //            DataTable dtt181 = dm.SelectQuary(cmd);
                //            int a171 = (dtt181.Rows.Count) + (dtt171.Rows.Count);
                //            l171.Text = a171.ToString();
                //            gen = "नहीं";
                //            cmd = "select * from form3 where c4='" + prm + "' and c7='" + gen + "'";
                //            DataTable dtt182 = dm.SelectQuary(cmd);
                //            int a172 = (dtt182.Rows.Count) + (dtt172.Rows.Count);
                //            l172.Text = a172.ToString();
                //            cmd = "select * from form3 where c4='" + prm + "'";
                //DataTable dtt8 = dm.SelectQuary(cmd);
                //ct = ct + dtt8.Rows.Count;
                //l173.Text = ct.ToString();

            }
            else if (tf == "table2")
			{
				informer.Text = "table2";
				cmd = "select * from form3";
				DataTable df3 = dm.SelectQuary(cmd);

                prm = "गरीबी या रूपयों की समस्या";
                gen = "हाँ";
                cmd = "select * from form3 where c21='" + prm + "' and c7='" + gen + "'";
                DataTable dtt211 = dm.SelectQuary(cmd);
                gen = "नहीं";
                cmd = "select * from form3 where c21='" + prm + "' and c7='" + gen + "'";
                DataTable dtt212 = dm.SelectQuary(cmd);
                cmd = "select * from form3 where c21='" + prm + "'";
                DataTable dtt213 = dm.SelectQuary(cmd);
                l211.Text = dtt211.Rows.Count.ToString();
                l212.Text = dtt212.Rows.Count.ToString();
                l213.Text = dtt213.Rows.Count.ToString();
                
                prm = "घर के माता पिता का एड्स से ग्रसित होना";
                gen = "हाँ";
                cmd = "select * from form3 where c21='" + prm + "' and c7='" + gen + "'";
                DataTable dtt221 = dm.SelectQuary(cmd);
                gen = "नहीं";
                cmd = "select * from form3 where c21='" + prm + "' and c7='" + gen + "'";
                DataTable dtt222 = dm.SelectQuary(cmd);
                cmd = "select * from form3 where c21='" + prm + "'";
                DataTable dtt223 = dm.SelectQuary(cmd);
                l221.Text = dtt221.Rows.Count.ToString();
                l222.Text = dtt222.Rows.Count.ToString();
                l223.Text = dtt223.Rows.Count.ToString();
                
                prm = "अपंगता";
                gen = "हाँ";
                cmd = "select * from form3 where c21='" + prm + "' and c7='" + gen + "'";
                DataTable dtt231 = dm.SelectQuary(cmd);
                gen = "नहीं";
                cmd = "select * from form3 where c21='" + prm + "' and c7='" + gen + "'";
                DataTable dtt232 = dm.SelectQuary(cmd);
                cmd = "select * from form3 where c21='" + prm + "'";
                DataTable dtt233 = dm.SelectQuary(cmd);
                l231.Text = dtt231.Rows.Count.ToString();
                l232.Text = dtt232.Rows.Count.ToString();
                l233.Text = dtt233.Rows.Count.ToString();
                
                prm = "कोई गम्भीर बीमारी";
                gen = "हाँ";
                cmd = "select * from form3 where c21='" + prm + "' and c7='" + gen + "'";
                DataTable dtt241 = dm.SelectQuary(cmd);
                gen = "नहीं";
                cmd = "select * from form3 where c21='" + prm + "' and c7='" + gen + "'";
                DataTable dtt242 = dm.SelectQuary(cmd);
                cmd = "select * from form3 where c21='" + prm + "'";
                DataTable dtt243 = dm.SelectQuary(cmd);
                l241.Text = dtt241.Rows.Count.ToString();
                l242.Text = dtt242.Rows.Count.ToString();
                l243.Text = dtt243.Rows.Count.ToString();
                
                prm = "माता पिता की मृत्यु";
                gen = "हाँ";
                cmd = "select * from form3 where c21='" + prm + "' and c7='" + gen + "'";
                DataTable dtt251 = dm.SelectQuary(cmd);
                gen = "नहीं";
                cmd = "select * from form3 where c21='" + prm + "' and c7='" + gen + "'";
                DataTable dtt252 = dm.SelectQuary(cmd);
                cmd = "select * from form3 where c21='" + prm + "'";
                DataTable dtt253 = dm.SelectQuary(cmd);
                l251.Text = dtt251.Rows.Count.ToString();
                l252.Text = dtt252.Rows.Count.ToString();
                l253.Text = dtt253.Rows.Count.ToString();
                
                prm = "माता पिता द्वारा छोड़ा जाना";
                gen = "हाँ";
                cmd = "select * from form3 where c21='" + prm + "' and c7='" + gen + "'";
                DataTable dtt261 = dm.SelectQuary(cmd);
                gen = "नहीं";
                cmd = "select * from form3 where c21='" + prm + "' and c7='" + gen + "'";
                DataTable dtt262 = dm.SelectQuary(cmd);
                cmd = "select * from form3 where c21='" + prm + "'";
                DataTable dtt263 = dm.SelectQuary(cmd);
                l261.Text = dtt261.Rows.Count.ToString();
                l262.Text = dtt262.Rows.Count.ToString();
                l263.Text = dtt263.Rows.Count.ToString();
                
                prm = "किसी के द्वारा बेचा जाना";
                gen = "हाँ";
                cmd = "select * from form3 where c21='" + prm + "' and c7='" + gen + "'";
                DataTable dtt271 = dm.SelectQuary(cmd);
                gen = "नहीं";
                cmd = "select * from form3 where c21='" + prm + "' and c7='" + gen + "'";
                DataTable dtt272 = dm.SelectQuary(cmd);
                cmd = "select * from form3 where c21='" + prm + "'";
                DataTable dtt273 = dm.SelectQuary(cmd);
                l271.Text = dtt271.Rows.Count.ToString();
                l272.Text = dtt272.Rows.Count.ToString();
                l273.Text = dtt273.Rows.Count.ToString();
                
                prm = "अन्य कोई";
                gen = "हाँ";
                cmd = "select * from form3 where c21='" + prm + "' and c7='" + gen + "'";
                DataTable dtt281 = dm.SelectQuary(cmd);
                gen = "नहीं";
                cmd = "select * from form3 where c21='" + prm + "' and c7='" + gen + "'";
                DataTable dtt282 = dm.SelectQuary(cmd);
                cmd = "select * from form3 where c21='" + prm + "'";
                DataTable dtt283 = dm.SelectQuary(cmd);
                l281.Text = dtt281.Rows.Count.ToString();
                l282.Text = dtt282.Rows.Count.ToString();
                l283.Text = dtt283.Rows.Count.ToString();

            }
			else if (tf == "table3")
			{
                int wages, ct1 = 0, ct2 = 0, ct3 = 0, ct4 = 0;
                string dum;
                informer.Text = "table3";
                gen = "हाँ";
                cmd = "select * from form3 where c7='" + gen + "'";
                DataTable df1 = dm.SelectQuary(cmd);
                if (df1.Rows.Count > 0)
                {
                    for (i = 0; i < df1.Rows.Count; i++)
                    {
                        dum = df1.Rows[i]["c18"].ToString();
                        int.TryParse(df1.Rows[i]["c18"].ToString(), out wages);
                        if (wages > 0 && wages < 2000)
                        {
                            ct1++;
                        }
                        else if (wages > 2000 && wages < 4000)
                        {
                            ct2++;
                        }
                        else if (wages > 4000 && wages < 6000)
                        {
                            ct3++;
                        }
                        else if (wages > 6000)
                        {
                            ct4++;
                        }
                    }
                    l311.Text = ct1.ToString();
                    l321.Text = ct2.ToString();
                    l331.Text = ct3.ToString();
                    l341.Text = ct4.ToString();
                    ct1 = 0;
                    ct2 = 0;
                    ct3 = 0;
                    ct4 = 0;
                }

                gen = "नहीं";
                cmd = "select * from form3 where c7='" + gen + "'";
                DataTable df2 = dm.SelectQuary(cmd);
                if (df2.Rows.Count > 0)
                {
                    for (i = 0; i < df2.Rows.Count; i++)
                    {
                        dum = df2.Rows[i]["c18"].ToString();
                        int.TryParse(df2.Rows[i]["c18"].ToString(), out wages);
                        if (wages > 0 && wages < 2000)
                        {
                            ct1++;
                        }
                        else if (wages > 2000 && wages < 4000)
                        {
                            ct2++;
                        }
                        else if (wages > 4000 && wages < 6000)
                        {
                            ct3++;
                        }
                        else if (wages > 6000)
                        {
                            ct4++;
                        }
                    }
                    l312.Text = ct1.ToString();
                    l322.Text = ct2.ToString();
                    l332.Text = ct3.ToString();
                    l342.Text = ct4.ToString();
                    ct1 = 0;
                    ct2 = 0;
                    ct3 = 0;
                    ct4 = 0;
                }

                cmd = "select * from form3";
                DataTable df3 = dm.SelectQuary(cmd);
                if (df3.Rows.Count > 0)
                {
                    for (i = 0; i < df3.Rows.Count; i++)
                    {
                        dum = df3.Rows[i]["c18"].ToString();
                        int.TryParse(df3.Rows[i]["c18"].ToString(), out wages);
                        if (wages > 0 && wages < 2000)
                        {
                            ct1++;
                        }
                        else if (wages > 2000 && wages < 4000)
                        {
                            ct2++;
                        }
                        else if (wages > 4000 && wages < 6000)
                        {
                            ct3++;
                        }
                        else if (wages > 6000)
                        {
                            ct4++;
                        }
                    }
                    l313.Text = ct1.ToString();
                    l323.Text = ct2.ToString();
                    l333.Text = ct3.ToString();
                    l343.Text = ct4.ToString();
                    ct1 = 0;
                    ct2 = 0;
                    ct3 = 0;
                    ct4 = 0;
                }

            }
            else if (tf == "table4")
			{
				informer.Text = "table4";
                cmd = "select * from form3";
                DataTable df3 = dm.SelectQuary(cmd);

                prm = "स्वयं का व्यवसाय";
                gen = "हाँ";
                cmd = "select * from form3 where c13='" + prm + "' and c7='" + gen + "'";
                DataTable dtt411 = dm.SelectQuary(cmd);
                gen = "नहीं";
                cmd = "select * from form3 where c13='" + prm + "' and c7='" + gen + "'";
                DataTable dtt412 = dm.SelectQuary(cmd);
                cmd = "select * from form3 where c13='" + prm + "'";
                DataTable dtt413 = dm.SelectQuary(cmd);
                l411.Text = dtt411.Rows.Count.ToString();
                l412.Text = dtt412.Rows.Count.ToString();
                l413.Text = dtt413.Rows.Count.ToString();

                prm = "घरेलु व्यवसाय";
                gen = "हाँ";
                cmd = "select * from form3 where c13='" + prm + "' and c7='" + gen + "'";
                DataTable dtt421 = dm.SelectQuary(cmd);
                gen = "नहीं";
                cmd = "select * from form3 where c13='" + prm + "' and c7='" + gen + "'";
                DataTable dtt422 = dm.SelectQuary(cmd);
                cmd = "select * from form3 where c13='" + prm + "'";
                DataTable dtt423 = dm.SelectQuary(cmd);
                l421.Text = dtt421.Rows.Count.ToString();
                l422.Text = dtt422.Rows.Count.ToString();
                l423.Text = dtt423.Rows.Count.ToString();

                prm = "स्थाई दुकान";
                gen = "हाँ";
                cmd = "select * from form3 where c13='" + prm + "' and c7='" + gen + "'";
                DataTable dtt431 = dm.SelectQuary(cmd);
                gen = "नहीं";
                cmd = "select * from form3 where c13='" + prm + "' and c7='" + gen + "'";
                DataTable dtt432 = dm.SelectQuary(cmd);
                cmd = "select * from form3 where c13='" + prm + "'";
                DataTable dtt433 = dm.SelectQuary(cmd);
                l431.Text = dtt431.Rows.Count.ToString();
                l432.Text = dtt432.Rows.Count.ToString();
                l433.Text = dtt433.Rows.Count.ToString();

                prm = "औद्यौगिक प्रतिष्ठान";
                gen = "हाँ";
                cmd = "select * from form3 where c13='" + prm + "' and c7='" + gen + "'";
                DataTable dtt441 = dm.SelectQuary(cmd);
                gen = "नहीं";
                cmd = "select * from form3 where c13='" + prm + "' and c7='" + gen + "'";
                DataTable dtt442 = dm.SelectQuary(cmd);
                cmd = "select * from form3 where c13='" + prm + "'";
                DataTable dtt443 = dm.SelectQuary(cmd);
                l441.Text = dtt441.Rows.Count.ToString();
                l442.Text = dtt442.Rows.Count.ToString();
                l443.Text = dtt443.Rows.Count.ToString();

                prm = "दुकान";
                gen = "हाँ";
                cmd = "select * from form3 where c13='" + prm + "' and c7='" + gen + "'";
                DataTable dtt451 = dm.SelectQuary(cmd);
                gen = "नहीं";
                cmd = "select * from form3 where c13='" + prm + "' and c7='" + gen + "'";
                DataTable dtt452 = dm.SelectQuary(cmd);
                cmd = "select * from form3 where c13='" + prm + "'";
                DataTable dtt453 = dm.SelectQuary(cmd);
                l451.Text = dtt451.Rows.Count.ToString();
                l452.Text = dtt452.Rows.Count.ToString();
                l453.Text = dtt453.Rows.Count.ToString();

                prm = "घरेलु औद्यौगिक ईकाई";
                gen = "हाँ";
                cmd = "select * from form3 where c13='" + prm + "' and c7='" + gen + "'";
                DataTable dtt461 = dm.SelectQuary(cmd);
                gen = "नहीं";
                cmd = "select * from form3 where c13='" + prm + "' and c7='" + gen + "'";
                DataTable dtt462 = dm.SelectQuary(cmd);
                cmd = "select * from form3 where c13='" + prm + "'";
                DataTable dtt463 = dm.SelectQuary(cmd);
                l461.Text = dtt461.Rows.Count.ToString();
                l462.Text = dtt462.Rows.Count.ToString();
                l463.Text = dtt463.Rows.Count.ToString();

                prm = "कृषि कार्य";
                gen = "हाँ";
                cmd = "select * from form3 where c13='" + prm + "' and c7='" + gen + "'";
                DataTable dtt471 = dm.SelectQuary(cmd);
                gen = "नहीं";
                cmd = "select * from form3 where c13='" + prm + "' and c7='" + gen + "'";
                DataTable dtt472 = dm.SelectQuary(cmd);
                cmd = "select * from form3 where c13='" + prm + "'";
                DataTable dtt473 = dm.SelectQuary(cmd);
                l471.Text = dtt471.Rows.Count.ToString();
                l472.Text = dtt472.Rows.Count.ToString();
                l473.Text = dtt473.Rows.Count.ToString();

                prm = "घरेलु कार्य";
                gen = "हाँ";
                cmd = "select * from form3 where c13='" + prm + "' and c7='" + gen + "'";
                DataTable dtt481 = dm.SelectQuary(cmd);
                gen = "नहीं";
                cmd = "select * from form3 where c13='" + prm + "' and c7='" + gen + "'";
                DataTable dtt482 = dm.SelectQuary(cmd);
                cmd = "select * from form3 where c13='" + prm + "'";
                DataTable dtt483 = dm.SelectQuary(cmd);
                l481.Text = dtt481.Rows.Count.ToString();
                l482.Text = dtt482.Rows.Count.ToString();
                l483.Text = dtt483.Rows.Count.ToString();

                prm = "अन्य कोई";
                gen = "हाँ";
                cmd = "select * from form3 where c13='" + prm + "' and c7='" + gen + "'";
                DataTable dtt491 = dm.SelectQuary(cmd);
                gen = "नहीं";
                cmd = "select * from form3 where c13='" + prm + "' and c7='" + gen + "'";
                DataTable dtt492 = dm.SelectQuary(cmd);
                cmd = "select * from form3 where c13='" + prm + "'";
                DataTable dtt493 = dm.SelectQuary(cmd);
                l491.Text = dtt491.Rows.Count.ToString();
                l492.Text = dtt492.Rows.Count.ToString();
                l493.Text = dtt493.Rows.Count.ToString();

            }
            else if (tf == "table5")
			{
				informer.Text = "table5";
                cmd = "select * from form3";
                DataTable df3 = dm.SelectQuary(cmd);

                prm = "अनुसूचित जाति";
                gen = "हाँ";
                cmd = "select * from form3 where c9='" + prm + "' and c7='" + gen + "'";
                DataTable dtt511 = dm.SelectQuary(cmd);
                gen = "नहीं";
                cmd = "select * from form3 where c9='" + prm + "' and c7='" + gen + "'";
                DataTable dtt512 = dm.SelectQuary(cmd);
                cmd = "select * from form3 where c9='" + prm + "'";
                DataTable dtt513 = dm.SelectQuary(cmd);
                l511.Text = dtt511.Rows.Count.ToString();
                l512.Text = dtt512.Rows.Count.ToString();
                l513.Text = dtt513.Rows.Count.ToString();

                prm = "अनुसूचित जनजाति";
                gen = "हाँ";
                cmd = "select * from form3 where c9='" + prm + "' and c7='" + gen + "'";
                DataTable dtt521 = dm.SelectQuary(cmd);
                gen = "नहीं";
                cmd = "select * from form3 where c9='" + prm + "' and c7='" + gen + "'";
                DataTable dtt522 = dm.SelectQuary(cmd);
                cmd = "select * from form3 where c9='" + prm + "'";
                DataTable dtt523 = dm.SelectQuary(cmd);
                l521.Text = dtt521.Rows.Count.ToString();
                l522.Text = dtt522.Rows.Count.ToString();
                l523.Text = dtt523.Rows.Count.ToString();

                prm = "अन्य पिछड़ा वर्ग";
                gen = "हाँ";
                cmd = "select * from form3 where c9='" + prm + "' and c7='" + gen + "'";
                DataTable dtt531 = dm.SelectQuary(cmd);
                gen = "नहीं";
                cmd = "select * from form3 where c9='" + prm + "' and c7='" + gen + "'";
                DataTable dtt532 = dm.SelectQuary(cmd);
                cmd = "select * from form3 where c9='" + prm + "'";
                DataTable dtt533 = dm.SelectQuary(cmd);
                l531.Text = dtt531.Rows.Count.ToString();
                l532.Text = dtt532.Rows.Count.ToString();
                l533.Text = dtt533.Rows.Count.ToString();

                prm = "सामान्य";
                gen = "हाँ";
                cmd = "select * from form3 where c9='" + prm + "' and c7='" + gen + "'";
                DataTable dtt541 = dm.SelectQuary(cmd);
                gen = "नहीं";
                cmd = "select * from form3 where c9='" + prm + "' and c7='" + gen + "'";
                DataTable dtt542 = dm.SelectQuary(cmd);
                cmd = "select * from form3 where c9='" + prm + "'";
                DataTable dtt543 = dm.SelectQuary(cmd);
                l541.Text = dtt541.Rows.Count.ToString();
                l542.Text = dtt542.Rows.Count.ToString();
                l543.Text = dtt543.Rows.Count.ToString();

                prm = "अल्पसंख्यक";
                gen = "हाँ";
                cmd = "select * from form3 where c9='" + prm + "' and c7='" + gen + "'";
                DataTable dtt551 = dm.SelectQuary(cmd);
                gen = "नहीं";
                cmd = "select * from form3 where c9='" + prm + "' and c7='" + gen + "'";
                DataTable dtt552 = dm.SelectQuary(cmd);
                cmd = "select * from form3 where c9='" + prm + "'";
                DataTable dtt553 = dm.SelectQuary(cmd);
                l551.Text = dtt551.Rows.Count.ToString();
                l552.Text = dtt552.Rows.Count.ToString();
                l553.Text = dtt553.Rows.Count.ToString();

            }
            else if (tf == "table6")
			{
				informer.Text = "table6";
                cmd = "select * from form3";
                DataTable df3 = dm.SelectQuary(cmd);

                prm = "हिन्दु";
                gen = "हाँ";
                cmd = "select * from form3 where c8='" + prm + "' and c7='" + gen + "'";
                DataTable dtt611 = dm.SelectQuary(cmd);
                gen = "नहीं";
                cmd = "select * from form3 where c8='" + prm + "' and c7='" + gen + "'";
                DataTable dtt612 = dm.SelectQuary(cmd);
                cmd = "select * from form3 where c8='" + prm + "'";
                DataTable dtt613 = dm.SelectQuary(cmd);
                l611.Text = dtt611.Rows.Count.ToString();
                l612.Text = dtt612.Rows.Count.ToString();
                l613.Text = dtt613.Rows.Count.ToString();

                prm = "मुस्लिम";
                gen = "हाँ";
                cmd = "select * from form3 where c8='" + prm + "' and c7='" + gen + "'";
                DataTable dtt621 = dm.SelectQuary(cmd);
                gen = "नहीं";
                cmd = "select * from form3 where c8='" + prm + "' and c7='" + gen + "'";
                DataTable dtt622 = dm.SelectQuary(cmd);
                cmd = "select * from form3 where c8='" + prm + "'";
                DataTable dtt623 = dm.SelectQuary(cmd);
                l621.Text = dtt621.Rows.Count.ToString();
                l622.Text = dtt622.Rows.Count.ToString();
                l623.Text = dtt623.Rows.Count.ToString();

                prm = "सिक्ख";
                gen = "हाँ";
                cmd = "select * from form3 where c8='" + prm + "' and c7='" + gen + "'";
                DataTable dtt631 = dm.SelectQuary(cmd);
                gen = "नहीं";
                cmd = "select * from form3 where c8='" + prm + "' and c7='" + gen + "'";
                DataTable dtt632 = dm.SelectQuary(cmd);
                cmd = "select * from form3 where c8='" + prm + "'";
                DataTable dtt633 = dm.SelectQuary(cmd);
                l631.Text = dtt631.Rows.Count.ToString();
                l632.Text = dtt632.Rows.Count.ToString();
                l633.Text = dtt633.Rows.Count.ToString();

                prm = "ईसाई";
                gen = "हाँ";
                cmd = "select * from form3 where c8='" + prm + "' and c7='" + gen + "'";
                DataTable dtt641 = dm.SelectQuary(cmd);
                gen = "नहीं";
                cmd = "select * from form3 where c8='" + prm + "' and c7='" + gen + "'";
                DataTable dtt642 = dm.SelectQuary(cmd);
                cmd = "select * from form3 where c8='" + prm + "'";
                DataTable dtt643 = dm.SelectQuary(cmd);
                l641.Text = dtt641.Rows.Count.ToString();
                l642.Text = dtt642.Rows.Count.ToString();
                l643.Text = dtt643.Rows.Count.ToString();

                prm = "बौद्ध";
                gen = "हाँ";
                cmd = "select * from form3 where c8='" + prm + "' and c7='" + gen + "'";
                DataTable dtt651 = dm.SelectQuary(cmd);
                gen = "नहीं";
                cmd = "select * from form3 where c8='" + prm + "' and c7='" + gen + "'";
                DataTable dtt652 = dm.SelectQuary(cmd);
                cmd = "select * from form3 where c8='" + prm + "'";
                DataTable dtt653 = dm.SelectQuary(cmd);
                l651.Text = dtt651.Rows.Count.ToString();
                l652.Text = dtt652.Rows.Count.ToString();
                l653.Text = dtt653.Rows.Count.ToString();

                prm = "जैन";
                gen = "हाँ";
                cmd = "select * from form3 where c8='" + prm + "' and c7='" + gen + "'";
                DataTable dtt661 = dm.SelectQuary(cmd);
                gen = "नहीं";
                cmd = "select * from form3 where c8='" + prm + "' and c7='" + gen + "'";
                DataTable dtt662 = dm.SelectQuary(cmd);
                cmd = "select * from form3 where c8='" + prm + "'";
                DataTable dtt663 = dm.SelectQuary(cmd);
                l661.Text = dtt661.Rows.Count.ToString();
                l662.Text = dtt662.Rows.Count.ToString();
                l663.Text = dtt663.Rows.Count.ToString();

                prm = "अन्य कोई";
                gen = "हाँ";
                cmd = "select * from form3 where c8='" + prm + "' and c7='" + gen + "'";
                DataTable dtt671 = dm.SelectQuary(cmd);
                gen = "नहीं";
                cmd = "select * from form3 where c8='" + prm + "' and c7='" + gen + "'";
                DataTable dtt672 = dm.SelectQuary(cmd);
                cmd = "select * from form3 where c8='" + prm + "'";
                DataTable dtt673 = dm.SelectQuary(cmd);
                l671.Text = dtt671.Rows.Count.ToString();
                l672.Text = dtt672.Rows.Count.ToString();
                l673.Text = dtt673.Rows.Count.ToString();

            }
            else if (tf == "table7")
			{
                int c1 = 0, c2 = 0, c3 = 0;
				informer.Text = "table7";
                prm = "1";
                cmd = "select * from coverform where WardNo='" + prm + "'";
                DataTable dtcv1 = dm.SelectQuary(cmd);
                if (dtcv1.Rows.Count > 1)
                {
                    for (i = 0; i < dtcv1.Rows.Count; i++)
                    {
                        gen = "हाँ";
                        cmd = "select * from form3 where UnNo='" + dtcv1.Rows[i]["UnNo"].ToString() + "' and c7='" + gen + "'";
                        DataTable dtt711 = dm.SelectQuary(cmd);
                        c1 = c1 + dtt711.Rows.Count;
                        gen = "नहीं";
                        cmd = "select * from form3 where UnNo='" + dtcv1.Rows[i]["UnNo"].ToString() + "' and c7='" + gen + "'";
                        DataTable dtt712 = dm.SelectQuary(cmd);
                        c2 = c2 + dtt712.Rows.Count;
                        cmd = "select * from form3 where UnNo='" + dtcv1.Rows[i]["UnNo"].ToString() + "'";
                        DataTable dtt713 = dm.SelectQuary(cmd);
                        c3 = c3 + dtt713.Rows.Count;
                    }
                }
                l711.Text = c1.ToString();
                l712.Text = c2.ToString();
                l713.Text = c3.ToString();
                c1 = 0;
                c2 = 0;
                c3 = 0;

                prm = "2";
                cmd = "select * from coverform where WardNo='" + prm + "'";
                DataTable dtcv2 = dm.SelectQuary(cmd);
                if (dtcv2.Rows.Count > 1)
                {
                    for (i = 0; i < dtcv2.Rows.Count; i++)
                    {
                        gen = "हाँ";
                        cmd = "select * from form3 where UnNo='" + dtcv2.Rows[i]["UnNo"].ToString() + "' and c7='" + gen + "'";
                        DataTable dtt721 = dm.SelectQuary(cmd);
                        c1 = c1 + dtt721.Rows.Count;
                        gen = "नहीं";
                        cmd = "select * from form3 where UnNo='" + dtcv2.Rows[i]["UnNo"].ToString() + "' and c7='" + gen + "'";
                        DataTable dtt722 = dm.SelectQuary(cmd);
                        c2 = c2 + dtt722.Rows.Count;
                        cmd = "select * from form3 where UnNo='" + dtcv2.Rows[i]["UnNo"].ToString() + "'";
                        DataTable dtt723 = dm.SelectQuary(cmd);
                        c3 = c3 + dtt723.Rows.Count;
                    }
                }
                l721.Text = c1.ToString();
                l722.Text = c2.ToString();
                l723.Text = c3.ToString();
                c1 = 0;
                c2 = 0;
                c3 = 0;

                prm = "3";
                cmd = "select * from coverform where WardNo='" + prm + "'";
                DataTable dtcv3 = dm.SelectQuary(cmd);
                if (dtcv3.Rows.Count > 1)
                {
                    for (i = 0; i < dtcv3.Rows.Count; i++)
                    {
                        gen = "हाँ";
                        cmd = "select * from form3 where UnNo='" + dtcv3.Rows[i]["UnNo"].ToString() + "' and c7='" + gen + "'";
                        DataTable dtt731 = dm.SelectQuary(cmd);
                        c1 = c1 + dtt731.Rows.Count;
                        gen = "नहीं";
                        cmd = "select * from form3 where UnNo='" + dtcv3.Rows[i]["UnNo"].ToString() + "' and c7='" + gen + "'";
                        DataTable dtt732 = dm.SelectQuary(cmd);
                        c2 = c2 + dtt732.Rows.Count;
                        cmd = "select * from form3 where UnNo='" + dtcv3.Rows[i]["UnNo"].ToString() + "'";
                        DataTable dtt733 = dm.SelectQuary(cmd);
                        c3 = c3 + dtt733.Rows.Count;
                    }
                }
                l731.Text = c1.ToString();
                l732.Text = c2.ToString();
                l733.Text = c3.ToString();
                c1 = 0;
                c2 = 0;
                c3 = 0;

                prm = "4";
                cmd = "select * from coverform where WardNo='" + prm + "'";
                DataTable dtcv4 = dm.SelectQuary(cmd);
                if (dtcv4.Rows.Count > 1)
                {
                    for (i = 0; i < dtcv4.Rows.Count; i++)
                    {
                        gen = "हाँ";
                        cmd = "select * from form3 where UnNo='" + dtcv4.Rows[i]["UnNo"].ToString() + "' and c7='" + gen + "'";
                        DataTable dtt741 = dm.SelectQuary(cmd);
                        c1 = c1 + dtt741.Rows.Count;
                        gen = "नहीं";
                        cmd = "select * from form3 where UnNo='" + dtcv4.Rows[i]["UnNo"].ToString() + "' and c7='" + gen + "'";
                        DataTable dtt742 = dm.SelectQuary(cmd);
                        c2 = c2 + dtt742.Rows.Count;
                        cmd = "select * from form3 where UnNo='" + dtcv4.Rows[i]["UnNo"].ToString() + "'";
                        DataTable dtt743 = dm.SelectQuary(cmd);
                        c3 = c3 + dtt743.Rows.Count;
                    }
                }
                l741.Text = c1.ToString();
                l742.Text = c2.ToString();
                l743.Text = c3.ToString();
                c1 = 0;
                c2 = 0;
                c3 = 0;

                prm = "5";
                cmd = "select * from coverform where WardNo='" + prm + "'";
                DataTable dtcv5 = dm.SelectQuary(cmd);
                if (dtcv5.Rows.Count > 1)
                {
                    for (i = 0; i < dtcv5.Rows.Count; i++)
                    {
                        gen = "हाँ";
                        cmd = "select * from form3 where UnNo='" + dtcv5.Rows[i]["UnNo"].ToString() + "' and c7='" + gen + "'";
                        DataTable dtt751 = dm.SelectQuary(cmd);
                        c1 = c1 + dtt751.Rows.Count;
                        gen = "नहीं";
                        cmd = "select * from form3 where UnNo='" + dtcv5.Rows[i]["UnNo"].ToString() + "' and c7='" + gen + "'";
                        DataTable dtt752 = dm.SelectQuary(cmd);
                        c2 = c2 + dtt752.Rows.Count;
                        cmd = "select * from form3 where UnNo='" + dtcv5.Rows[i]["UnNo"].ToString() + "'";
                        DataTable dtt753 = dm.SelectQuary(cmd);
                        c3 = c3 + dtt753.Rows.Count;
                    }
                }
                l751.Text = c1.ToString();
                l752.Text = c2.ToString();
                l753.Text = c3.ToString();
                c1 = 0;
                c2 = 0;
                c3 = 0;

                prm = "6";
                cmd = "select * from coverform where WardNo='" + prm + "'";
                DataTable dtcv6 = dm.SelectQuary(cmd);
                if (dtcv6.Rows.Count > 1)
                {
                    for (i = 0; i < dtcv6.Rows.Count; i++)
                    {
                        gen = "हाँ";
                        cmd = "select * from form3 where UnNo='" + dtcv6.Rows[i]["UnNo"].ToString() + "' and c7='" + gen + "'";
                        DataTable dtt761 = dm.SelectQuary(cmd);
                        c1 = c1 + dtt761.Rows.Count;
                        gen = "नहीं";
                        cmd = "select * from form3 where UnNo='" + dtcv6.Rows[i]["UnNo"].ToString() + "' and c7='" + gen + "'";
                        DataTable dtt762 = dm.SelectQuary(cmd);
                        c2 = c2 + dtt762.Rows.Count;
                        cmd = "select * from form3 where UnNo='" + dtcv6.Rows[i]["UnNo"].ToString() + "'";
                        DataTable dtt763 = dm.SelectQuary(cmd);
                        c3 = c3 + dtt763.Rows.Count;
                    }
                }
                l761.Text = c1.ToString();
                l762.Text = c2.ToString();
                l763.Text = c3.ToString();
                c1 = 0;
                c2 = 0;
                c3 = 0;

                prm = "7";
                cmd = "select * from coverform where WardNo='" + prm + "'";
                DataTable dtcv7 = dm.SelectQuary(cmd);
                if (dtcv7.Rows.Count > 1)
                {
                    for (i = 0; i < dtcv7.Rows.Count; i++)
                    {
                        gen = "हाँ";
                        cmd = "select * from form3 where UnNo='" + dtcv7.Rows[i]["UnNo"].ToString() + "' and c7='" + gen + "'";
                        DataTable dtt771 = dm.SelectQuary(cmd);
                        c1 = c1 + dtt771.Rows.Count;
                        gen = "नहीं";
                        cmd = "select * from form3 where UnNo='" + dtcv7.Rows[i]["UnNo"].ToString() + "' and c7='" + gen + "'";
                        DataTable dtt772 = dm.SelectQuary(cmd);
                        c2 = c2 + dtt772.Rows.Count;
                        cmd = "select * from form3 where UnNo='" + dtcv7.Rows[i]["UnNo"].ToString() + "'";
                        DataTable dtt773 = dm.SelectQuary(cmd);
                        c3 = c3 + dtt773.Rows.Count;
                    }
                }
                l771.Text = c1.ToString();
                l772.Text = c2.ToString();
                l773.Text = c3.ToString();
                c1 = 0;
                c2 = 0;
                c3 = 0;

                prm = "8";
                cmd = "select * from coverform where WardNo='" + prm + "'";
                DataTable dtcv8 = dm.SelectQuary(cmd);
                if (dtcv8.Rows.Count > 1)
                {
                    for (i = 0; i < dtcv8.Rows.Count; i++)
                    {
                        gen = "हाँ";
                        cmd = "select * from form3 where UnNo='" + dtcv8.Rows[i]["UnNo"].ToString() + "' and c7='" + gen + "'";
                        DataTable dtt781 = dm.SelectQuary(cmd);
                        c1 = c1 + dtt781.Rows.Count;
                        gen = "नहीं";
                        cmd = "select * from form3 where UnNo='" + dtcv8.Rows[i]["UnNo"].ToString() + "' and c7='" + gen + "'";
                        DataTable dtt782 = dm.SelectQuary(cmd);
                        c2 = c2 + dtt782.Rows.Count;
                        cmd = "select * from form3 where UnNo='" + dtcv8.Rows[i]["UnNo"].ToString() + "'";
                        DataTable dtt783 = dm.SelectQuary(cmd);
                        c3 = c3 + dtt783.Rows.Count;
                    }
                }
                l781.Text = c1.ToString();
                l782.Text = c2.ToString();
                l783.Text = c3.ToString();
                c1 = 0;
                c2 = 0;
                c3 = 0;

                prm = "9";
                cmd = "select * from coverform where WardNo='" + prm + "'";
                DataTable dtcv9 = dm.SelectQuary(cmd);
                if (dtcv9.Rows.Count > 1)
                {
                    for (i = 0; i < dtcv9.Rows.Count; i++)
                    {
                        gen = "हाँ";
                        cmd = "select * from form3 where UnNo='" + dtcv9.Rows[i]["UnNo"].ToString() + "' and c7='" + gen + "'";
                        DataTable dtt791 = dm.SelectQuary(cmd);
                        c1 = c1 + dtt791.Rows.Count;
                        gen = "नहीं";
                        cmd = "select * from form3 where UnNo='" + dtcv9.Rows[i]["UnNo"].ToString() + "' and c7='" + gen + "'";
                        DataTable dtt792 = dm.SelectQuary(cmd);
                        c2 = c2 + dtt792.Rows.Count;
                        cmd = "select * from form3 where UnNo='" + dtcv9.Rows[i]["UnNo"].ToString() + "'";
                        DataTable dtt793 = dm.SelectQuary(cmd);
                        c3 = c3 + dtt793.Rows.Count;
                    }
                }
                l791.Text = c1.ToString();
                l792.Text = c2.ToString();
                l793.Text = c3.ToString();
                c1 = 0;
                c2 = 0;
                c3 = 0;

                prm = "10";
                cmd = "select * from coverform where WardNo='" + prm + "'";
                DataTable dtcv10 = dm.SelectQuary(cmd);
                if (dtcv10.Rows.Count > 1)
                {
                    for (i = 0; i < dtcv10.Rows.Count; i++)
                    {
                        gen = "हाँ";
                        cmd = "select * from form3 where UnNo='" + dtcv10.Rows[i]["UnNo"].ToString() + "' and c7='" + gen + "'";
                        DataTable dtt7101 = dm.SelectQuary(cmd);
                        c1 = c1 + dtt7101.Rows.Count;
                        gen = "नहीं";
                        cmd = "select * from form3 where UnNo='" + dtcv10.Rows[i]["UnNo"].ToString() + "' and c7='" + gen + "'";
                        DataTable dtt7102 = dm.SelectQuary(cmd);
                        c2 = c2 + dtt7102.Rows.Count;
                        cmd = "select * from form3 where UnNo='" + dtcv10.Rows[i]["UnNo"].ToString() + "'";
                        DataTable dtt7103 = dm.SelectQuary(cmd);
                        c3 = c3 + dtt7103.Rows.Count;
                    }
                }
                l7101.Text = c1.ToString();
                l7102.Text = c2.ToString();
                l7103.Text = c3.ToString();
                c1 = 0;
                c2 = 0;
                c3 = 0;

                prm = "11";
                cmd = "select * from coverform where WardNo='" + prm + "'";
                DataTable dtcv11 = dm.SelectQuary(cmd);
                if (dtcv11.Rows.Count > 1)
                {
                    for (i = 0; i < dtcv11.Rows.Count; i++)
                    {
                        gen = "हाँ";
                        cmd = "select * from form3 where UnNo='" + dtcv11.Rows[i]["UnNo"].ToString() + "' and c7='" + gen + "'";
                        DataTable dtt7111 = dm.SelectQuary(cmd);
                        c1 = c1 + dtt7111.Rows.Count;
                        gen = "नहीं";
                        cmd = "select * from form3 where UnNo='" + dtcv11.Rows[i]["UnNo"].ToString() + "' and c7='" + gen + "'";
                        DataTable dtt7112 = dm.SelectQuary(cmd);
                        c2 = c2 + dtt7112.Rows.Count;
                        cmd = "select * from form3 where UnNo='" + dtcv11.Rows[i]["UnNo"].ToString() + "'";
                        DataTable dtt7113 = dm.SelectQuary(cmd);
                        c3 = c3 + dtt7113.Rows.Count;
                    }
                }
                l7111.Text = c1.ToString();
                l7112.Text = c2.ToString();
                l7113.Text = c3.ToString();
                c1 = 0;
                c2 = 0;
                c3 = 0;

                prm = "12";
                cmd = "select * from coverform where WardNo='" + prm + "'";
                DataTable dtcv12 = dm.SelectQuary(cmd);
                if (dtcv12.Rows.Count > 1)
                {
                    for (i = 0; i < dtcv12.Rows.Count; i++)
                    {
                        gen = "हाँ";
                        cmd = "select * from form3 where UnNo='" + dtcv12.Rows[i]["UnNo"].ToString() + "' and c7='" + gen + "'";
                        DataTable dtt7121 = dm.SelectQuary(cmd);
                        c1 = c1 + dtt7121.Rows.Count;
                        gen = "नहीं";
                        cmd = "select * from form3 where UnNo='" + dtcv12.Rows[i]["UnNo"].ToString() + "' and c7='" + gen + "'";
                        DataTable dtt7122 = dm.SelectQuary(cmd);
                        c2 = c2 + dtt7122.Rows.Count;
                        cmd = "select * from form3 where UnNo='" + dtcv12.Rows[i]["UnNo"].ToString() + "'";
                        DataTable dtt7123 = dm.SelectQuary(cmd);
                        c3 = c3 + dtt7123.Rows.Count;
                    }
                }
                l7121.Text = c1.ToString();
                l7122.Text = c2.ToString();
                l7123.Text = c3.ToString();
                c1 = 0;
                c2 = 0;
                c3 = 0;

                prm = "13";
                cmd = "select * from coverform where WardNo='" + prm + "'";
                DataTable dtcv13 = dm.SelectQuary(cmd);
                if (dtcv13.Rows.Count > 1)
                {
                    for (i = 0; i < dtcv13.Rows.Count; i++)
                    {
                        gen = "हाँ";
                        cmd = "select * from form3 where UnNo='" + dtcv13.Rows[i]["UnNo"].ToString() + "' and c7='" + gen + "'";
                        DataTable dtt7131 = dm.SelectQuary(cmd);
                        c1 = c1 + dtt7131.Rows.Count;
                        gen = "नहीं";
                        cmd = "select * from form3 where UnNo='" + dtcv13.Rows[i]["UnNo"].ToString() + "' and c7='" + gen + "'";
                        DataTable dtt7132 = dm.SelectQuary(cmd);
                        c2 = c2 + dtt7132.Rows.Count;
                        cmd = "select * from form3 where UnNo='" + dtcv13.Rows[i]["UnNo"].ToString() + "'";
                        DataTable dtt7133 = dm.SelectQuary(cmd);
                        c3 = c3 + dtt7133.Rows.Count;
                    }
                }
                l7131.Text = c1.ToString();
                l7132.Text = c2.ToString();
                l7133.Text = c3.ToString();
                c1 = 0;
                c2 = 0;
                c3 = 0;

                prm = "14";
                cmd = "select * from coverform where WardNo='" + prm + "'";
                DataTable dtcv14 = dm.SelectQuary(cmd);
                if (dtcv14.Rows.Count > 1)
                {
                    for (i = 0; i < dtcv14.Rows.Count; i++)
                    {
                        gen = "हाँ";
                        cmd = "select * from form3 where UnNo='" + dtcv14.Rows[i]["UnNo"].ToString() + "' and c7='" + gen + "'";
                        DataTable dtt7141 = dm.SelectQuary(cmd);
                        c1 = c1 + dtt7141.Rows.Count;
                        gen = "नहीं";
                        cmd = "select * from form3 where UnNo='" + dtcv14.Rows[i]["UnNo"].ToString() + "' and c7='" + gen + "'";
                        DataTable dtt7142 = dm.SelectQuary(cmd);
                        c2 = c2 + dtt7142.Rows.Count;
                        cmd = "select * from form3 where UnNo='" + dtcv14.Rows[i]["UnNo"].ToString() + "'";
                        DataTable dtt7143 = dm.SelectQuary(cmd);
                        c3 = c3 + dtt7143.Rows.Count;
                    }
                }
                l7141.Text = c1.ToString();
                l7142.Text = c2.ToString();
                l7143.Text = c3.ToString();
                c1 = 0;
                c2 = 0;
                c3 = 0;

                prm = "15";
                cmd = "select * from coverform where WardNo='" + prm + "'";
                DataTable dtcv15 = dm.SelectQuary(cmd);
                if (dtcv15.Rows.Count > 1)
                {
                    for (i = 0; i < dtcv15.Rows.Count; i++)
                    {
                        gen = "हाँ";
                        cmd = "select * from form3 where UnNo='" + dtcv15.Rows[i]["UnNo"].ToString() + "' and c7='" + gen + "'";
                        DataTable dtt7151 = dm.SelectQuary(cmd);
                        c1 = c1 + dtt7151.Rows.Count;
                        gen = "नहीं";
                        cmd = "select * from form3 where UnNo='" + dtcv15.Rows[i]["UnNo"].ToString() + "' and c7='" + gen + "'";
                        DataTable dtt7152 = dm.SelectQuary(cmd);
                        c2 = c2 + dtt7152.Rows.Count;
                        cmd = "select * from form3 where UnNo='" + dtcv15.Rows[i]["UnNo"].ToString() + "'";
                        DataTable dtt7153 = dm.SelectQuary(cmd);
                        c3 = c3 + dtt7153.Rows.Count;
                    }
                }
                l7151.Text = c1.ToString();
                l7152.Text = c2.ToString();
                l7153.Text = c3.ToString();
                c1 = 0;
                c2 = 0;
                c3 = 0;

                prm = "16";
                cmd = "select * from coverform where WardNo='" + prm + "'";
                DataTable dtcv16 = dm.SelectQuary(cmd);
                if (dtcv16.Rows.Count > 1)
                {
                    for (i = 0; i < dtcv16.Rows.Count; i++)
                    {
                        gen = "हाँ";
                        cmd = "select * from form3 where UnNo='" + dtcv16.Rows[i]["UnNo"].ToString() + "' and c7='" + gen + "'";
                        DataTable dtt7161 = dm.SelectQuary(cmd);
                        c1 = c1 + dtt7161.Rows.Count;
                        gen = "नहीं";
                        cmd = "select * from form3 where UnNo='" + dtcv16.Rows[i]["UnNo"].ToString() + "' and c7='" + gen + "'";
                        DataTable dtt7162 = dm.SelectQuary(cmd);
                        c2 = c2 + dtt7162.Rows.Count;
                        cmd = "select * from form3 where UnNo='" + dtcv16.Rows[i]["UnNo"].ToString() + "'";
                        DataTable dtt7163 = dm.SelectQuary(cmd);
                        c3 = c3 + dtt7163.Rows.Count;
                    }
                }
                l7161.Text = c1.ToString();
                l7162.Text = c2.ToString();
                l7163.Text = c3.ToString();
                c1 = 0;
                c2 = 0;
                c3 = 0;

                prm = "17";
                cmd = "select * from coverform where WardNo='" + prm + "'";
                DataTable dtcv17 = dm.SelectQuary(cmd);
                if (dtcv17.Rows.Count > 1)
                {
                    for (i = 0; i < dtcv17.Rows.Count; i++)
                    {
                        gen = "हाँ";
                        cmd = "select * from form3 where UnNo='" + dtcv17.Rows[i]["UnNo"].ToString() + "' and c7='" + gen + "'";
                        DataTable dtt7171 = dm.SelectQuary(cmd);
                        c1 = c1 + dtt7171.Rows.Count;
                        gen = "नहीं";
                        cmd = "select * from form3 where UnNo='" + dtcv17.Rows[i]["UnNo"].ToString() + "' and c7='" + gen + "'";
                        DataTable dtt7172 = dm.SelectQuary(cmd);
                        c2 = c2 + dtt7172.Rows.Count;
                        cmd = "select * from form3 where UnNo='" + dtcv17.Rows[i]["UnNo"].ToString() + "'";
                        DataTable dtt7173 = dm.SelectQuary(cmd);
                        c3 = c3 + dtt7173.Rows.Count;
                    }
                }
                l7171.Text = c1.ToString();
                l7172.Text = c2.ToString();
                l7173.Text = c3.ToString();
                c1 = 0;
                c2 = 0;
                c3 = 0;

                prm = "18";
                cmd = "select * from coverform where WardNo='" + prm + "'";
                DataTable dtcv18 = dm.SelectQuary(cmd);
                if (dtcv18.Rows.Count > 1)
                {
                    for (i = 0; i < dtcv18.Rows.Count; i++)
                    {
                        gen = "हाँ";
                        cmd = "select * from form3 where UnNo='" + dtcv18.Rows[i]["UnNo"].ToString() + "' and c7='" + gen + "'";
                        DataTable dtt7181 = dm.SelectQuary(cmd);
                        c1 = c1 + dtt7181.Rows.Count;
                        gen = "नहीं";
                        cmd = "select * from form3 where UnNo='" + dtcv18.Rows[i]["UnNo"].ToString() + "' and c7='" + gen + "'";
                        DataTable dtt7182 = dm.SelectQuary(cmd);
                        c2 = c2 + dtt7182.Rows.Count;
                        cmd = "select * from form3 where UnNo='" + dtcv18.Rows[i]["UnNo"].ToString() + "'";
                        DataTable dtt7183 = dm.SelectQuary(cmd);
                        c3 = c3 + dtt7183.Rows.Count;
                    }
                }
                l7181.Text = c1.ToString();
                l7182.Text = c2.ToString();
                l7183.Text = c3.ToString();
                c1 = 0;
                c2 = 0;
                c3 = 0;

                prm = "19";
                cmd = "select * from coverform where WardNo='" + prm + "'";
                DataTable dtcv19 = dm.SelectQuary(cmd);
                if (dtcv19.Rows.Count > 1)
                {
                    for (i = 0; i < dtcv19.Rows.Count; i++)
                    {
                        gen = "हाँ";
                        cmd = "select * from form3 where UnNo='" + dtcv19.Rows[i]["UnNo"].ToString() + "' and c7='" + gen + "'";
                        DataTable dtt7191 = dm.SelectQuary(cmd);
                        c1 = c1 + dtt7191.Rows.Count;
                        gen = "नहीं";
                        cmd = "select * from form3 where UnNo='" + dtcv19.Rows[i]["UnNo"].ToString() + "' and c7='" + gen + "'";
                        DataTable dtt7192 = dm.SelectQuary(cmd);
                        c2 = c2 + dtt7192.Rows.Count;
                        cmd = "select * from form3 where UnNo='" + dtcv19.Rows[i]["UnNo"].ToString() + "'";
                        DataTable dtt7193 = dm.SelectQuary(cmd);
                        c3 = c3 + dtt7193.Rows.Count;
                    }
                }
                l7191.Text = c1.ToString();
                l7192.Text = c2.ToString();
                l7193.Text = c3.ToString();
                c1 = 0;
                c2 = 0;
                c3 = 0;

                prm = "20";
                cmd = "select * from coverform where WardNo='" + prm + "'";
                DataTable dtcv20 = dm.SelectQuary(cmd);
                if (dtcv20.Rows.Count > 1)
                {
                    for (i = 0; i < dtcv20.Rows.Count; i++)
                    {
                        gen = "हाँ";
                        cmd = "select * from form3 where UnNo='" + dtcv20.Rows[i]["UnNo"].ToString() + "' and c7='" + gen + "'";
                        DataTable dtt7201 = dm.SelectQuary(cmd);
                        c1 = c1 + dtt7201.Rows.Count;
                        gen = "नहीं";
                        cmd = "select * from form3 where UnNo='" + dtcv20.Rows[i]["UnNo"].ToString() + "' and c7='" + gen + "'";
                        DataTable dtt7202 = dm.SelectQuary(cmd);
                        c2 = c2 + dtt7202.Rows.Count;
                        cmd = "select * from form3 where UnNo='" + dtcv20.Rows[i]["UnNo"].ToString() + "'";
                        DataTable dtt7203 = dm.SelectQuary(cmd);
                        c3 = c3 + dtt7203.Rows.Count;
                    }
                }
                l7201.Text = c1.ToString();
                l7202.Text = c2.ToString();
                l7203.Text = c3.ToString();
                c1 = 0;
                c2 = 0;
                c3 = 0;

                prm = "21";
                cmd = "select * from coverform where WardNo='" + prm + "'";
                DataTable dtcv21 = dm.SelectQuary(cmd);
                if (dtcv21.Rows.Count > 1)
                {
                    for (i = 0; i < dtcv21.Rows.Count; i++)
                    {
                        gen = "हाँ";
                        cmd = "select * from form3 where UnNo='" + dtcv21.Rows[i]["UnNo"].ToString() + "' and c7='" + gen + "'";
                        DataTable dtt7211 = dm.SelectQuary(cmd);
                        c1 = c1 + dtt7211.Rows.Count;
                        gen = "नहीं";
                        cmd = "select * from form3 where UnNo='" + dtcv21.Rows[i]["UnNo"].ToString() + "' and c7='" + gen + "'";
                        DataTable dtt7212 = dm.SelectQuary(cmd);
                        c2 = c2 + dtt7212.Rows.Count;
                        cmd = "select * from form3 where UnNo='" + dtcv21.Rows[i]["UnNo"].ToString() + "'";
                        DataTable dtt7213 = dm.SelectQuary(cmd);
                        c3 = c3 + dtt7213.Rows.Count;
                    }
                }
                l7211.Text = c1.ToString();
                l7212.Text = c2.ToString();
                l7213.Text = c3.ToString();
                c1 = 0;
                c2 = 0;
                c3 = 0;

                prm = "22";
                cmd = "select * from coverform where WardNo='" + prm + "'";
                DataTable dtcv22 = dm.SelectQuary(cmd);
                if (dtcv22.Rows.Count > 1)
                {
                    for (i = 0; i < dtcv22.Rows.Count; i++)
                    {
                        gen = "हाँ";
                        cmd = "select * from form3 where UnNo='" + dtcv22.Rows[i]["UnNo"].ToString() + "' and c7='" + gen + "'";
                        DataTable dtt7221 = dm.SelectQuary(cmd);
                        c1 = c1 + dtt7221.Rows.Count;
                        gen = "नहीं";
                        cmd = "select * from form3 where UnNo='" + dtcv22.Rows[i]["UnNo"].ToString() + "' and c7='" + gen + "'";
                        DataTable dtt7222 = dm.SelectQuary(cmd);
                        c2 = c2 + dtt7222.Rows.Count;
                        cmd = "select * from form3 where UnNo='" + dtcv22.Rows[i]["UnNo"].ToString() + "'";
                        DataTable dtt7223 = dm.SelectQuary(cmd);
                        c3 = c3 + dtt7223.Rows.Count;
                    }
                }
                l7221.Text = c1.ToString();
                l7222.Text = c2.ToString();
                l7223.Text = c3.ToString();
                c1 = 0;
                c2 = 0;
                c3 = 0;

                prm = "23";
                cmd = "select * from coverform where WardNo='" + prm + "'";
                DataTable dtcv23 = dm.SelectQuary(cmd);
                if (dtcv23.Rows.Count > 1)
                {
                    for (i = 0; i < dtcv23.Rows.Count; i++)
                    {
                        gen = "हाँ";
                        cmd = "select * from form3 where UnNo='" + dtcv23.Rows[i]["UnNo"].ToString() + "' and c7='" + gen + "'";
                        DataTable dtt7231 = dm.SelectQuary(cmd);
                        c1 = c1 + dtt7231.Rows.Count;
                        gen = "नहीं";
                        cmd = "select * from form3 where UnNo='" + dtcv23.Rows[i]["UnNo"].ToString() + "' and c7='" + gen + "'";
                        DataTable dtt7232 = dm.SelectQuary(cmd);
                        c2 = c2 + dtt7232.Rows.Count;
                        cmd = "select * from form3 where UnNo='" + dtcv23.Rows[i]["UnNo"].ToString() + "'";
                        DataTable dtt7233 = dm.SelectQuary(cmd);
                        c3 = c3 + dtt7233.Rows.Count;
                    }
                }
                l7231.Text = c1.ToString();
                l7232.Text = c2.ToString();
                l7233.Text = c3.ToString();
                c1 = 0;
                c2 = 0;
                c3 = 0;

                prm = "24";
                cmd = "select * from coverform where WardNo='" + prm + "'";
                DataTable dtcv24 = dm.SelectQuary(cmd);
                if (dtcv24.Rows.Count > 1)
                {
                    for (i = 0; i < dtcv24.Rows.Count; i++)
                    {
                        gen = "हाँ";
                        cmd = "select * from form3 where UnNo='" + dtcv24.Rows[i]["UnNo"].ToString() + "' and c7='" + gen + "'";
                        DataTable dtt7241 = dm.SelectQuary(cmd);
                        c1 = c1 + dtt7241.Rows.Count;
                        gen = "नहीं";
                        cmd = "select * from form3 where UnNo='" + dtcv24.Rows[i]["UnNo"].ToString() + "' and c7='" + gen + "'";
                        DataTable dtt7242 = dm.SelectQuary(cmd);
                        c2 = c2 + dtt7242.Rows.Count;
                        cmd = "select * from form3 where UnNo='" + dtcv24.Rows[i]["UnNo"].ToString() + "'";
                        DataTable dtt7243 = dm.SelectQuary(cmd);
                        c3 = c3 + dtt7243.Rows.Count;
                    }
                }
                l7241.Text = c1.ToString();
                l7242.Text = c2.ToString();
                l7243.Text = c3.ToString();
                c1 = 0;
                c2 = 0;
                c3 = 0;

                prm = "25";
                cmd = "select * from coverform where WardNo='" + prm + "'";
                DataTable dtcv25 = dm.SelectQuary(cmd);
                if (dtcv25.Rows.Count > 1)
                {
                    for (i = 0; i < dtcv25.Rows.Count; i++)
                    {
                        gen = "हाँ";
                        cmd = "select * from form3 where UnNo='" + dtcv25.Rows[i]["UnNo"].ToString() + "' and c7='" + gen + "'";
                        DataTable dtt7251 = dm.SelectQuary(cmd);
                        c1 = c1 + dtt7251.Rows.Count;
                        gen = "नहीं";
                        cmd = "select * from form3 where UnNo='" + dtcv25.Rows[i]["UnNo"].ToString() + "' and c7='" + gen + "'";
                        DataTable dtt7252 = dm.SelectQuary(cmd);
                        c2 = c2 + dtt7252.Rows.Count;
                        cmd = "select * from form3 where UnNo='" + dtcv25.Rows[i]["UnNo"].ToString() + "'";
                        DataTable dtt7253 = dm.SelectQuary(cmd);
                        c3 = c3 + dtt7253.Rows.Count;
                    }
                }
                l7251.Text = c1.ToString();
                l7252.Text = c2.ToString();
                l7253.Text = c3.ToString();
                c1 = 0;
                c2 = 0;
                c3 = 0;

                prm = "26";
                cmd = "select * from coverform where WardNo='" + prm + "'";
                DataTable dtcv26 = dm.SelectQuary(cmd);
                if (dtcv26.Rows.Count > 1)
                {
                    for (i = 0; i < dtcv26.Rows.Count; i++)
                    {
                        gen = "हाँ";
                        cmd = "select * from form3 where UnNo='" + dtcv26.Rows[i]["UnNo"].ToString() + "' and c7='" + gen + "'";
                        DataTable dtt7261 = dm.SelectQuary(cmd);
                        c1 = c1 + dtt7261.Rows.Count;
                        gen = "नहीं";
                        cmd = "select * from form3 where UnNo='" + dtcv26.Rows[i]["UnNo"].ToString() + "' and c7='" + gen + "'";
                        DataTable dtt7262 = dm.SelectQuary(cmd);
                        c2 = c2 + dtt7262.Rows.Count;
                        cmd = "select * from form3 where UnNo='" + dtcv26.Rows[i]["UnNo"].ToString() + "'";
                        DataTable dtt7263 = dm.SelectQuary(cmd);
                        c3 = c3 + dtt7263.Rows.Count;
                    }
                }
                l7261.Text = c1.ToString();
                l7262.Text = c2.ToString();
                l7263.Text = c3.ToString();
                c1 = 0;
                c2 = 0;
                c3 = 0;

                prm = "27";
                cmd = "select * from coverform where WardNo='" + prm + "'";
                DataTable dtcv27 = dm.SelectQuary(cmd);
                if (dtcv27.Rows.Count > 1)
                {
                    for (i = 0; i < dtcv27.Rows.Count; i++)
                    {
                        gen = "हाँ";
                        cmd = "select * from form3 where UnNo='" + dtcv27.Rows[i]["UnNo"].ToString() + "' and c7='" + gen + "'";
                        DataTable dtt7271 = dm.SelectQuary(cmd);
                        c1 = c1 + dtt7271.Rows.Count;
                        gen = "नहीं";
                        cmd = "select * from form3 where UnNo='" + dtcv27.Rows[i]["UnNo"].ToString() + "' and c7='" + gen + "'";
                        DataTable dtt7272 = dm.SelectQuary(cmd);
                        c2 = c2 + dtt7272.Rows.Count;
                        cmd = "select * from form3 where UnNo='" + dtcv27.Rows[i]["UnNo"].ToString() + "'";
                        DataTable dtt7273 = dm.SelectQuary(cmd);
                        c3 = c3 + dtt7273.Rows.Count;
                    }
                }
                l7271.Text = c1.ToString();
                l7272.Text = c2.ToString();
                l7273.Text = c3.ToString();
                c1 = 0;
                c2 = 0;
                c3 = 0;

            }
            else if (tf == "table8")
			{
				informer.Text = "table8";
                cmd = "select * from form3";
                DataTable df3 = dm.SelectQuary(cmd);

                prm = "शिक्षित";
                gen = "हाँ";
                cmd = "select * from form3 where c26a='" + prm + "' and c7='" + gen + "'";
                DataTable dtt811 = dm.SelectQuary(cmd);
                gen = "नहीं";
                cmd = "select * from form3 where c26a='" + prm + "' and c7='" + gen + "'";
                DataTable dtt812 = dm.SelectQuary(cmd);
                cmd = "select * from form3 where c26a='" + prm + "'";
                DataTable dtt813 = dm.SelectQuary(cmd);
                l811.Text = dtt811.Rows.Count.ToString();
                l812.Text = dtt812.Rows.Count.ToString();
                l813.Text = dtt813.Rows.Count.ToString();

                prm = "पढ़ते हुए स्कूल छोड़ दिया ( किस कक्षा से )";
                gen = "हाँ";
                cmd = "select * from form3 where c26a='" + prm + "' and c7='" + gen + "'";
                DataTable dtt821 = dm.SelectQuary(cmd);
                gen = "नहीं";
                cmd = "select * from form3 where c26a='" + prm + "' and c7='" + gen + "'";
                DataTable dtt822 = dm.SelectQuary(cmd);
                cmd = "select * from form3 where c26a='" + prm + "'";
                DataTable dtt823 = dm.SelectQuary(cmd);
                l821.Text = dtt821.Rows.Count.ToString();
                l822.Text = dtt822.Rows.Count.ToString();
                l823.Text = dtt823.Rows.Count.ToString();

                prm = "नौकरी के साथ पढ़ाई";
                gen = "हाँ";
                cmd = "select * from form3 where c26a='" + prm + "' and c7='" + gen + "'";
                DataTable dtt831 = dm.SelectQuary(cmd);
                gen = "नहीं";
                cmd = "select * from form3 where c26a='" + prm + "' and c7='" + gen + "'";
                DataTable dtt832 = dm.SelectQuary(cmd);
                cmd = "select * from form3 where c26a='" + prm + "'";
                DataTable dtt833 = dm.SelectQuary(cmd);
                l831.Text = dtt831.Rows.Count.ToString();
                l832.Text = dtt832.Rows.Count.ToString();
                l833.Text = dtt833.Rows.Count.ToString();

                prm = "कभी स्कूल नहीं गया";
                gen = "हाँ";
                cmd = "select * from form3 where c26a='" + prm + "' and c7='" + gen + "'";
                DataTable dtt841 = dm.SelectQuary(cmd);
                gen = "नहीं";
                cmd = "select * from form3 where c26a='" + prm + "' and c7='" + gen + "'";
                DataTable dtt842 = dm.SelectQuary(cmd);
                cmd = "select * from form3 where c26a='" + prm + "'";
                DataTable dtt843 = dm.SelectQuary(cmd);
                l841.Text = dtt841.Rows.Count.ToString();
                l842.Text = dtt842.Rows.Count.ToString();
                l843.Text = dtt843.Rows.Count.ToString();

            }
            else if (tf == "table9")
			{
				informer.Text = "table9";
                cmd = "select * from form3";
                DataTable df3 = dm.SelectQuary(cmd);

                ct = 0;
                gen = "हाँ";
                cmd = "select * from form3 where c7='" + gen + "'";
                DataTable dtt911 = dm.SelectQuary(cmd);
                for (i = 0; i < dtt911.Rows.Count; i++)
                {
                    if (dtt911.Rows[i]["c17"].ToString() == "1" || dtt911.Rows[i]["c17"].ToString() == "2")
                        ct++;
                }
                l911.Text = ct.ToString();
                ct = 0;
                gen = "नहीं";
                cmd = "select * from form3 where c7='" + gen + "'";
                DataTable dtt912 = dm.SelectQuary(cmd);
                for (i = 0; i < dtt912.Rows.Count; i++)
                {
                    if (dtt912.Rows[i]["c17"].ToString() == "1" || dtt912.Rows[i]["c17"].ToString() == "2")
                        ct++;
                }
                l912.Text = ct.ToString();
                ct = 0;
                cmd = "select * from form3";
                DataTable dtt913 = dm.SelectQuary(cmd);
                for (i = 0; i < dtt913.Rows.Count; i++)
                {
                    if (dtt913.Rows[i]["c17"].ToString() == "1" || dtt913.Rows[i]["c17"].ToString() == "2")
                        ct++;
                }
                l913.Text = ct.ToString();

                
                ct = 0;
                gen = "हाँ";
                cmd = "select * from form3 where c7='" + gen + "'";
                DataTable dtt921 = dm.SelectQuary(cmd);
                for (i = 0; i < dtt921.Rows.Count; i++)
                {
                    if (dtt921.Rows[i]["c17"].ToString() == "3" || dtt921.Rows[i]["c17"].ToString() == "4")
                        ct++;
                }
                l921.Text = ct.ToString();
                ct = 0;
                gen = "नहीं";
                cmd = "select * from form3 where c7='" + gen + "'";
                DataTable dtt922 = dm.SelectQuary(cmd);
                for (i = 0; i < dtt922.Rows.Count; i++)
                {
                    if (dtt922.Rows[i]["c17"].ToString() == "3" || dtt922.Rows[i]["c17"].ToString() == "4")
                        ct++;
                }
                l922.Text = ct.ToString();
                ct = 0;
                cmd = "select * from form3";
                DataTable dtt923 = dm.SelectQuary(cmd);
                for (i = 0; i < dtt923.Rows.Count; i++)
                {
                    if (dtt923.Rows[i]["c17"].ToString() == "3" || dtt923.Rows[i]["c17"].ToString() == "4")
                        ct++;
                }
                l923.Text = ct.ToString();

                
                ct = 0;
                gen = "हाँ";
                cmd = "select * from form3 where c7='" + gen + "'";
                DataTable dtt931 = dm.SelectQuary(cmd);
                for (i = 0; i < dtt931.Rows.Count; i++)
                {
                    if (dtt931.Rows[i]["c17"].ToString() == "5" || dtt931.Rows[i]["c17"].ToString() == "6")
                        ct++;
                }
                l931.Text = ct.ToString();
                ct = 0;
                gen = "नहीं";
                cmd = "select * from form3 where c7='" + gen + "'";
                DataTable dtt932 = dm.SelectQuary(cmd);
                for (i = 0; i < dtt932.Rows.Count; i++)
                {
                    if (dtt932.Rows[i]["c17"].ToString() == "5" || dtt932.Rows[i]["c17"].ToString() == "6")
                        ct++;
                }
                l932.Text = ct.ToString();
                ct = 0;
                cmd = "select * from form3";
                DataTable dtt933 = dm.SelectQuary(cmd);
                for (i = 0; i < dtt933.Rows.Count; i++)
                {
                    if (dtt933.Rows[i]["c17"].ToString() == "5" || dtt933.Rows[i]["c17"].ToString() == "6")
                        ct++;
                }
                l933.Text = ct.ToString();

                
                ct = 0;
                gen = "हाँ";
                cmd = "select * from form3 where c7='" + gen + "'";
                DataTable dtt941 = dm.SelectQuary(cmd);
                for (i = 0; i < dtt941.Rows.Count; i++)
                {
                    if (dtt941.Rows[i]["c17"].ToString() == "7" || dtt941.Rows[i]["c17"].ToString() == "8" || dtt941.Rows[i]["c17"].ToString() == "9" || dtt941.Rows[i]["c17"].ToString() == "10" || dtt941.Rows[i]["c17"].ToString() == "11" || dtt941.Rows[i]["c17"].ToString() == "12")
                        ct++;
                }
                l941.Text = ct.ToString();
                ct = 0;
                gen = "नहीं";
                cmd = "select * from form3 where c7='" + gen + "'";
                DataTable dtt942 = dm.SelectQuary(cmd);
                for (i = 0; i < dtt942.Rows.Count; i++)
                {
                    if (dtt942.Rows[i]["c17"].ToString() == "7" || dtt942.Rows[i]["c17"].ToString() == "8" || dtt942.Rows[i]["c17"].ToString() == "9" || dtt942.Rows[i]["c17"].ToString() == "10" || dtt942.Rows[i]["c17"].ToString() == "11" || dtt942.Rows[i]["c17"].ToString() == "12")
                        ct++;
                }
                l942.Text = ct.ToString();
                ct = 0;
                cmd = "select * from form3";
                DataTable dtt943 = dm.SelectQuary(cmd);
                for (i = 0; i < dtt943.Rows.Count; i++)
                {
                    if (dtt943.Rows[i]["c17"].ToString() == "7" || dtt943.Rows[i]["c17"].ToString() == "8" || dtt943.Rows[i]["c17"].ToString() == "9" || dtt943.Rows[i]["c17"].ToString() == "10" || dtt943.Rows[i]["c17"].ToString() == "11" || dtt943.Rows[i]["c17"].ToString() == "12")
                        ct++;
                }
                l943.Text = ct.ToString();

            }
            else if (tf == "table10")
			{
				informer.Text = "table10";
                cmd = "select * from form3";
                DataTable df3 = dm.SelectQuary(cmd);

                prm = "अनुसूचित जाति";
                cmd = "select * from form3 where c9='" + prm + "'";
                DataTable dtt1011 = dm.SelectQuary(cmd);
                l1011.Text = dtt1011.Rows.Count.ToString();
                per = (float)(dtt1011.Rows.Count * 100) / df3.Rows.Count;
                l1012.Text = Math.Round(per, 2) + " %";

                prm = "अनुसूचित जनजाति";
                cmd = "select * from form3 where c9='" + prm + "'";
                DataTable dtt1021 = dm.SelectQuary(cmd);
                l1021.Text = dtt1021.Rows.Count.ToString();
                per = (float)(dtt1021.Rows.Count * 100) / df3.Rows.Count;
                l1022.Text = Math.Round(per, 2) + " %";

                prm = "अन्य पिछड़ा वर्ग";
                cmd = "select * from form3 where c9='" + prm + "'";
                DataTable dtt1031 = dm.SelectQuary(cmd);
                l1031.Text = dtt1031.Rows.Count.ToString();
                per = (float)(dtt1031.Rows.Count * 100) / df3.Rows.Count;
                l1032.Text = Math.Round(per, 2) + " %";

                prm = "सामान्य";
                cmd = "select * from form3 where c9='" + prm + "'";
                DataTable dtt1041 = dm.SelectQuary(cmd);
                l1041.Text = dtt1041.Rows.Count.ToString();
                per = (float)(dtt1041.Rows.Count * 100) / df3.Rows.Count;
                l1042.Text = Math.Round(per, 2) + " %";

                prm = "अल्पसंख्यक";
                cmd = "select * from form3 where c9='" + prm + "'";
                DataTable dtt1051 = dm.SelectQuary(cmd);
                l1051.Text = dtt1051.Rows.Count.ToString();
                per = (float)(dtt1051.Rows.Count * 100) / df3.Rows.Count;
                l1052.Text = Math.Round(per, 2) + " %";
            }
			else if (tf == "table11")
			{
				informer.Text = "table11";
                cmd = "select * from form3";
                DataTable df3 = dm.SelectQuary(cmd);

                prm = "हिन्दु";
                cmd = "select * from form3 where c8='" + prm + "'";
                DataTable dtt1111 = dm.SelectQuary(cmd);
                l1111.Text = (dtt1111.Rows.Count - 30).ToString();
                per = (float)(dtt1111.Rows.Count * 100) / df3.Rows.Count;
                l1112.Text = Math.Round(per, 2) + " %";

                prm = "मुस्लिम";
                cmd = "select * from form3 where c8='" + prm + "'";
                DataTable dtt1121 = dm.SelectQuary(cmd);
                l1121.Text = (dtt1121.Rows.Count - 70).ToString();
                per = (float)(dtt1121.Rows.Count * 100) / df3.Rows.Count;
                l1122.Text = Math.Round(per, 2) + " %";

                prm = "सिक्ख";
                cmd = "select * from form3 where c8='" + prm + "'";
                DataTable dtt1131 = dm.SelectQuary(cmd);
                l1131.Text = dtt1131.Rows.Count.ToString();
                per = (float)(dtt1131.Rows.Count * 100) / df3.Rows.Count;
                l1132.Text = Math.Round(per, 2) + " %";

                prm = "ईसाई";
                cmd = "select * from form3 where c8='" + prm + "'";
                DataTable dtt1141 = dm.SelectQuary(cmd);
                l1141.Text = dtt1141.Rows.Count.ToString();
                per = (float)(dtt1141.Rows.Count * 100) / df3.Rows.Count;
                l1142.Text = Math.Round(per, 2) + " %";

                prm = "बौद्ध";
                cmd = "select * from form3 where c8='" + prm + "'";
                DataTable dtt1151 = dm.SelectQuary(cmd);
                l1151.Text = dtt1151.Rows.Count.ToString();
                per = (float)(dtt1151.Rows.Count * 100) / df3.Rows.Count;
                l1152.Text = Math.Round(per, 2) + " %";

                prm = "जैन";
                cmd = "select * from form3 where c8='" + prm + "'";
                DataTable dtt1161 = dm.SelectQuary(cmd);
                l1161.Text = dtt1161.Rows.Count.ToString();
                per = (float)(dtt1161.Rows.Count * 100) / df3.Rows.Count;
                l1162.Text = Math.Round(per, 2) + " %";

                prm = "अन्य कोई";
                cmd = "select * from form3 where c8='" + prm + "'";
                DataTable dtt1171 = dm.SelectQuary(cmd);
                l1171.Text = dtt1171.Rows.Count.ToString();
                per = (float)(dtt1171.Rows.Count * 100) / df3.Rows.Count;
                l1172.Text = Math.Round(per, 2) + " %";

            }
            else if (tf == "table12")
			{
				informer.Text = "table12";
                cmd = "select * from form3";
                DataTable df3 = dm.SelectQuary(cmd);

                gen = "हाँ";
                cmd = "select * from form3 where c7='" + gen + "'";
                DataTable dtt1211 = dm.SelectQuary(cmd);
                l1211.Text = dtt1211.Rows.Count.ToString();
                gen = "नहीं";
                cmd = "select * from form3 where c7='" + gen + "'";
                DataTable dtt1212 = dm.SelectQuary(cmd);
                l1212.Text = dtt1212.Rows.Count.ToString();
            }
			else if (tf == "table13")
			{
				informer.Text = "table13";
                cmd = "select * from form3";
                DataTable df3 = dm.SelectQuary(cmd);

                gen = "हाँ";
                cmd = "select * from form3 where c7='" + gen + "'";
                DataTable dtt1311 = dm.SelectQuary(cmd);
                l1311.Text = dtt1311.Rows.Count.ToString();
                gen = "नहीं";
                cmd = "select * from form3 where c7='" + gen + "'";
                DataTable dtt1312 = dm.SelectQuary(cmd);
                l1312.Text = dtt1312.Rows.Count.ToString();
            }
			else if (tf == "table14")
			{
				informer.Text = "table14";

                int ct1 = 0, ct2 = 0, ct3 = 0;
                int ct11 = 0, ct12 = 0, ct13 = 0;
                prm = "कभी स्कूल नहीं गया";
                cmd = "select * from form3 where c26a='" + prm + "'";
                DataTable dtt1411 = dm.SelectQuary(cmd);
                for (i = 0; i < dtt1411.Rows.Count; i++)
                {
                    if (dtt1411.Rows[i]["c4"].ToString() == "1" || dtt1411.Rows[i]["c4"].ToString() == "2" || dtt1411.Rows[i]["c4"].ToString() == "3" || dtt1411.Rows[i]["c4"].ToString() == "4" || dtt1411.Rows[i]["c4"].ToString() == "5" || dtt1411.Rows[i]["c4"].ToString() == "0")
                        ct1++;
                    else if (dtt1411.Rows[i]["c4"].ToString() == "6" || dtt1411.Rows[i]["c4"].ToString() == "7" || dtt1411.Rows[i]["c4"].ToString() == "8" || dtt1411.Rows[i]["c4"].ToString() == "9" || dtt1411.Rows[i]["c4"].ToString() == "10")
                        ct2++;
                    else if (dtt1411.Rows[i]["c4"].ToString() == "11" || dtt1411.Rows[i]["c4"].ToString() == "12" || dtt1411.Rows[i]["c4"].ToString() == "13" || dtt1411.Rows[i]["c4"].ToString() == "14")
                        ct3++;
                }
                l1412.Text = ct1.ToString();
                l1422.Text = ct2.ToString();
                l1432.Text = ct3.ToString();

                cmd = "select * from form3";
                DataTable df3 = dm.SelectQuary(cmd);
                for (i = 0; i < df3.Rows.Count; i++)
                {
                    if (df3.Rows[i]["c4"].ToString() == "1" || df3.Rows[i]["c4"].ToString() == "2" || df3.Rows[i]["c4"].ToString() == "3" || df3.Rows[i]["c4"].ToString() == "4" || df3.Rows[i]["c4"].ToString() == "5" || df3.Rows[i]["c4"].ToString() == "0")
                        ct11++;
                    else if (df3.Rows[i]["c4"].ToString() == "6" || df3.Rows[i]["c4"].ToString() == "7" || df3.Rows[i]["c4"].ToString() == "8" || df3.Rows[i]["c4"].ToString() == "9" || df3.Rows[i]["c4"].ToString() == "10")
                        ct12++;
                    else if (df3.Rows[i]["c4"].ToString() == "11" || df3.Rows[i]["c4"].ToString() == "12" || df3.Rows[i]["c4"].ToString() == "13" || df3.Rows[i]["c4"].ToString() == "14")
                        ct13++;
                }
                l1411.Text = (ct11 - ct1).ToString();
                l1421.Text = (ct12 - ct2).ToString();
                l1431.Text = (ct13 - ct3).ToString();
            }
			else if (tf == "table15")
			{
				informer.Text = "table15";

                prm = "शिक्षित";
                gen = "हाँ";
                cmd = "select * from form3 where c26a='" + prm + "' and c7='" + gen + "'";
                DataTable dtt1511 = dm.SelectQuary(cmd);
                gen = "नहीं";
                cmd = "select * from form3 where c26a='" + prm + "' and c7='" + gen + "'";
                DataTable dtt1521 = dm.SelectQuary(cmd);
                l1511.Text = dtt1511.Rows.Count.ToString();
                l1521.Text = dtt1521.Rows.Count.ToString();

                gen = "हाँ";
                cmd = "select * from form3 where c7='" + gen + "'";
                DataTable dtt1512 = dm.SelectQuary(cmd);
                gen = "नहीं";
                cmd = "select * from form3 where c7='" + gen + "'";
                DataTable dtt1522 = dm.SelectQuary(cmd);
                l1512.Text = (dtt1512.Rows.Count - dtt1511.Rows.Count).ToString();
                l1522.Text = (dtt1522.Rows.Count - dtt1521.Rows.Count).ToString();

            }
			else if (tf == "table16")
			{
				informer.Text = "table16";

                int ct1 = 0, ct2 = 0, ct3 = 0;
                int ct11 = 0, ct12 = 0, ct13 = 0;
                gen = "हाँ";
                cmd = "select * from form3 where c7='" + gen + "'";
                DataTable dtt1611 = dm.SelectQuary(cmd);
                for (i = 0; i < dtt1611.Rows.Count; i++)
                {
                    if (dtt1611.Rows[i]["c4"].ToString() == "6" || dtt1611.Rows[i]["c4"].ToString() == "7" || dtt1611.Rows[i]["c4"].ToString() == "8")
                        ct1++;
                    else if (dtt1611.Rows[i]["c4"].ToString() == "9" || dtt1611.Rows[i]["c4"].ToString() == "10" || dtt1611.Rows[i]["c4"].ToString() == "11")
                        ct2++;
                    else if (dtt1611.Rows[i]["c4"].ToString() == "12" || dtt1611.Rows[i]["c4"].ToString() == "13" || dtt1611.Rows[i]["c4"].ToString() == "14" || dtt1611.Rows[i]["c4"].ToString() == "15")
                        ct3++;
                }
                l1611.Text = ct1.ToString();
                l1621.Text = ct2.ToString();
                l1631.Text = ct3.ToString();

                gen = "नहीं";
                cmd = "select * from form3 where c7='" + gen + "'";
                DataTable dtt1621 = dm.SelectQuary(cmd);
                for (i = 0; i < dtt1621.Rows.Count; i++)
                {
                    if (dtt1611.Rows[i]["c4"].ToString() == "6" || dtt1611.Rows[i]["c4"].ToString() == "7" || dtt1611.Rows[i]["c4"].ToString() == "8")
                        ct11++;
                    else if (dtt1611.Rows[i]["c4"].ToString() == "9" || dtt1611.Rows[i]["c4"].ToString() == "10" || dtt1611.Rows[i]["c4"].ToString() == "11")
                        ct12++;
                    else if (dtt1611.Rows[i]["c4"].ToString() == "12" || dtt1611.Rows[i]["c4"].ToString() == "13" || dtt1611.Rows[i]["c4"].ToString() == "14" || dtt1611.Rows[i]["c4"].ToString() == "15")
                        ct13++;
                }
                l1612.Text = ct11.ToString();
                l1622.Text = ct12.ToString();
                l1632.Text = ct13.ToString();

            }
            else if (tf == "table17")
			{
                string gen = "-";
				informer.Text = "table17";
                cmd = "select * from form3 order by UnNo asc";
                DataTable dtf3 = dm.SelectQuary(cmd);
                if (dtf3.Rows.Count > 0)
                {
                    for (i = 0, ct = 1; i < dtf3.Rows.Count; i++, ct++)
                    {
                        cmd = "select * from coverform where UnNo='" + dtf3.Rows[i]["UnNo"].ToString() + "'";
                        DataTable dtfc = dm.SelectQuary(cmd);
                        cmd = "select * from form2 where UnNo='" + dtf3.Rows[i]["UnNo"].ToString() + "'";
                        DataTable dtff2 = dm.SelectQuary(cmd);
                        if (dtff2.Rows.Count > 0 && dtfc.Rows.Count > 0)
                        {
                            if (dtf3.Rows[i]["c7"].ToString() == "हाँ")
                                gen = "Male";
                            else if (dtf3.Rows[i]["c7"].ToString() == "नहीं")
                                gen = "Female";
                            pht17.Controls.Add(new Literal { Text = "<tr><td>" + ct + "</td><td>" + dtf3.Rows[i]["c2"].ToString() + "</td><td>" + dtff2.Rows[0]["c1"].ToString() + "</td><td>" + dtfc.Rows[0][7].ToString() + ", " + dtfc.Rows[0][6].ToString() + ", " + dtfc.Rows[0][5].ToString() + ", " + dtfc.Rows[0][4].ToString() + ", " + dtfc.Rows[0][3].ToString() + ", " + dtfc.Rows[0][2].ToString() + "</td><td>" + dtf3.Rows[i]["c4"].ToString() + "</td><td>" + dtf3.Rows[i]["c8"].ToString() + "</td><td>" + dtf3.Rows[i]["c9"].ToString() + "</td><td>" + gen + "</td></tr>" });
                        }
                    }
                }
            }
            else if (tf == "table18")
			{
				informer.Text = "table18";
                string gen = "-";
                cmd = "select * from form3 order by UnNo asc";
                DataTable dtf3 = dm.SelectQuary(cmd);
                if (dtf3.Rows.Count > 0)
                {
                    for (i = 0, ct = 1; i < dtf3.Rows.Count; i++, ct++)
                    {
                        cmd = "select * from coverform where UnNo='" + dtf3.Rows[i]["UnNo"].ToString() + "'";
                        DataTable dtfc = dm.SelectQuary(cmd);
                        cmd = "select * from form2 where UnNo='" + dtf3.Rows[i]["UnNo"].ToString() + "'";
                        DataTable dtff2 = dm.SelectQuary(cmd);
                        if (dtff2.Rows.Count > 0 && dtfc.Rows.Count > 0)
                        {
                            if (dtf3.Rows[i]["c7"].ToString() == "हाँ")
                                gen = "Male";
                            else if (dtf3.Rows[i]["c7"].ToString() == "नहीं")
                                gen = "Female";
                            pht18.Controls.Add(new Literal { Text = "<tr><td>" + ct + "</td><td>" + dtf3.Rows[i]["UnNo"].ToString() + "</td><td>" + dtf3.Rows[i]["c2"].ToString() + "</td><td>" + dtff2.Rows[0]["c1"].ToString() + "</td><td>" + dtfc.Rows[0][7].ToString() + ", " + dtfc.Rows[0][6].ToString() + ", " + dtfc.Rows[0][5].ToString() + ", " + dtfc.Rows[0][4].ToString() + ", " + dtfc.Rows[0][3].ToString() + ", " + dtfc.Rows[0][2].ToString() + "</td><td>" + dtf3.Rows[i]["c4"].ToString() + "</td><td>" + dtf3.Rows[i]["c8"].ToString() + "</td><td>" + dtf3.Rows[i]["c9"].ToString() + "</td><td>" + gen + "</td><td><img src='../Form4Images/" + dtf3.Rows[i]["c12a"].ToString() + "' style='height:100px;width:75px;' /></td></tr>" });
                        }
                    }
                }
            }
        }
		else
		{
			Response.Redirect("Survey_Login");
		}
	}
}