<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Form2_Preview.aspx.cs" Inherits="Admin_Zone_Form2_Preview" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>NCLP Survey Form 2 Preview</title>
    <meta name="theme-color" content="#f8f8ff" />
	<meta name="msApplication-navbutton-color" content="#f8f8ff" />
	<meta name="apple-mobile-web-app-status-bar-style" content="#f8f8ff" />
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="keywords" content="Dummy_Content" />
	<meta charset="utf-8"/>
	<meta name="viewport" content="width=device-width, initial-scale=1"/>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<link href="https://fonts.googleapis.com/css?family=Karma|Muli|Yantramanav" rel="stylesheet"/>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
    <link href="../CSS/MyCSS.css" rel="stylesheet" />
    <script src="../JS/MyJS.js"></script>
    <style>
    	.input-group span, .form-control {
    		font-size: 13px;
    	}
        .after-click {
            height: 100vh;
            width: 100%;
            background: rgba(255, 255, 255, 0.5);
            position: fixed;
            z-index: 11;
            display:none;
        }
            .after-click img {
                position: absolute;
                top: 50%;
                left: 50%;
                height: 30vh;
                width: 30vh;
                transform: translate(-50%,-50%);
            }
        #loader {
            height: 100vh;
            width: 100%;
            background: rgba(255, 255, 255, 0.90);
            position: fixed;
            z-index: 10;
        }
            #loader img {
                position: absolute;
                top: 50%;
                left: 50%;
                height: 30vh;
                width: 30vh;
                transform: translate(-50%,-50%);
            }
        .alert{
            font-size:11px;
            padding:6px 10px;
            font-family:muli;
        }
        label{
            font-size:14px;
            font-family:muli;
        }
        .input-group span{
            font-weight:bold;
            font-family:muli;
        }
        .input-group{
            margin-bottom:10px;
        }
        td, th {
            padding: 2px 5px;
            font-size: 14px;
            font-family: muli;
            user-select: none;
        }
        a, h4{
            font-family:muli;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div id="loader">
            <img src="Images/loading.gif" />
        </div>
        <div class="after-click">
            <img src="Images/loading.gif" />
        </div>
        <div class="upnav">
            &emsp;<a href="Admin_Home" class="btn btn-info click-on">Admin Home <span class="glyphicon glyphicon-home"></span></a>
            &emsp;<a href="Admin_Change_Password" class="btn btn-warning click-on">Password <span class="glyphicon glyphicon-edit"></span></a>
            &emsp;<a href="Admin_Logout" class="btn btn-danger click-on">Logout <span class="glyphicon glyphicon-log-out"></span></a>
        </div>
        <div class="container-fluid">
            <div class="login-panel">
                <h4>View Form Preview :</h4>
                <div class="row">
                <div class="col-sm-2"><br /><a href="Admin_Home" class="btn btn-default click-on">Admin Home</a></div>
                <div class="col-sm-2"><br /><a href="Form1_Preview" class="btn btn-default click-on">Form 1 Preview</a></div>
                <div class="col-sm-2"><br /><a href="Form2_Preview" class="btn btn-default click-on">Form 2 Preview</a></div>
                <div class="col-sm-2"><br /><a href="Form3_Preview" class="btn btn-default click-on">Form 3 Preview</a></div>
                </div>
            </div>
        </div>
        <hr />
        <h2 style="text-align:center;font-weight:bold;font-family:muli;">Form 2 Preview</h2><hr />

        <div class="col-lg-1"></div>
        <div class="col-lg-10">
            <div class="login-panel">
                <h3 style="text-align:center;font-family:karma;font-weight:bold;">परिवार के संबन्ध में विवरण</h3><hr />
                <label style="color:red;">महत्वपूर्ण : आप आंकड़ो की पूर्ति अपने सुविधानुसार हिन्दी / English में कर सकते हैं।</label>
                        
                <div class="input-group">
                    <span class="input-group-addon">1 - परिवार के मुखिया का नाम</span>
                    <asp:TextBox runat="server" ID="txt1" Placeholder="परिवार के मुखिया का नाम" MaxLength="100" CssClass="form-control txt" style="text-transform:uppercase;"></asp:TextBox>
                </div>

                <div class="input-group">
                    <span class="input-group-addon">2 - पता</span>
                    <asp:TextBox runat="server" ID="txt2" Placeholder="पता" MaxLength="200" TextMode="MultiLine" Rows="2" CssClass="form-control txt" style="text-transform:uppercase;resize:none;"></asp:TextBox>
                </div>

                <div class="input-group">
                    <span class="input-group-addon">3 - धर्म</span>
                    <asp:DropDownList runat="server" ID="txt3" CssClass="form-control txt">
                        <asp:ListItem>चुनें</asp:ListItem>
                        <asp:ListItem>हिन्दु</asp:ListItem>
                        <asp:ListItem>मुस्लिम</asp:ListItem>
                        <asp:ListItem>सिक्ख</asp:ListItem>
                        <asp:ListItem>ईसाई</asp:ListItem>
                        <asp:ListItem>बौद्ध</asp:ListItem>
                        <asp:ListItem>जैन</asp:ListItem>
                        <asp:ListItem>अन्य कोई</asp:ListItem>
                    </asp:DropDownList>
                </div>

                <div class="input-group">
                    <span class="input-group-addon">4 - जाति</span>
                    <asp:DropDownList runat="server" ID="txt4" CssClass="form-control txt">
                        <asp:ListItem>चुनें</asp:ListItem>
                        <asp:ListItem>अनुसूचित जाति</asp:ListItem>
                        <asp:ListItem>अनुसूचित जनजाति</asp:ListItem>
                        <asp:ListItem>अन्य पिछड़ा वर्ग</asp:ListItem>
                        <asp:ListItem>सामान्य</asp:ListItem>
                        <asp:ListItem>अल्पसंख्यक</asp:ListItem>
                    </asp:DropDownList>
                </div>

                <div class="input-group">
                    <span class="input-group-addon">5 - व्यवसाय</span>
                    <asp:TextBox runat="server" ID="txt5" Placeholder="पारिवारिक कार्य / व्यवसाय" MaxLength="100" CssClass="form-control txt" style="text-transform:uppercase;"></asp:TextBox>
                </div>
                <div class="input-group">
                    <span class="input-group-addon">6 - पारिवारिक मासिक आय ( रूपये में )</span>
                    <asp:TextBox runat="server" ID="txt6" Placeholder="पारिवारिक मासिक आय ( रूपये में )" TextMode="Number" CssClass="form-control txt" style="text-transform:uppercase;"></asp:TextBox>
                </div>

                <label for="kultxt">7 - परिवार के कुल सदस्यों की संख्या :</label>
                <div class="row">
                    <div class="col-md-6">
                        <div class="input-group">
                            <span class="input-group-addon">पुरूष</span>
                            <asp:TextBox runat="server" ID="txt7a" Placeholder="बालकों सहित" TextMode="Number" MaxLength="3" CssClass="form-control txt" style="text-transform:uppercase;"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="input-group">
                            <span class="input-group-addon">महिला</span>
                            <asp:TextBox runat="server" ID="txt7b" Placeholder="महिला" TextMode="Number" MaxLength="3" CssClass="form-control txt" style="text-transform:uppercase;"></asp:TextBox>
                        </div>
                    </div>
                </div>

                <label for="kultxt">8 - परिवार में 14 वर्ष से कम आयु के बच्चों की संख्या :</label>
                <div class="row">
                    <div class="col-md-4">
                        <div class="input-group">
                            <span class="input-group-addon">बालक</span>
                            <asp:TextBox runat="server" ID="txt8a1" Placeholder="बालक" TextMode="Number" MaxLength="3" CssClass="form-control txt"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-md-4">
						<div class="input-group">
							<span class="input-group-addon">शिक्षित (संख्या)</span>
							<asp:TextBox runat="server" ID="txt8a2" Placeholder="शिक्षित (संख्या)" TextMode="Number" MaxLength="3" CssClass="form-control txt"></asp:TextBox>
						</div>
                    </div>
                    <div class="col-md-4">
						<div class="input-group">
							<span class="input-group-addon">काम काजी (संख्या)</span>
							<asp:TextBox runat="server" ID="txt8a3" Placeholder="काम काजी (संख्या)" TextMode="Number" MaxLength="3" CssClass="form-control txt"></asp:TextBox>
						</div>
                    </div>
                </div>
				<div class="row">
                    <div class="col-md-4">
                        <div class="input-group">
                            <span class="input-group-addon">बालिका</span>
                            <asp:TextBox runat="server" ID="txt8b1" Placeholder="बालिका" TextMode="Number" MaxLength="3" CssClass="form-control txt"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-md-4">
						<div class="input-group">
							<span class="input-group-addon">शिक्षित (संख्या)</span>
							<asp:TextBox runat="server" ID="txt8b2" Placeholder="शिक्षित (संख्या)" TextMode="Number" MaxLength="3" CssClass="form-control txt"></asp:TextBox>
						</div>
                    </div>
                    <div class="col-md-4">
						<div class="input-group">
							<span class="input-group-addon">काम काजी (संख्या)</span>
							<asp:TextBox runat="server" ID="txt8b3" Placeholder="काम काजी (संख्या)" TextMode="Number" MaxLength="3" CssClass="form-control txt"></asp:TextBox>
						</div>
                    </div>
				</div>

				<label for="kultxt">9 - परिवार में 14 वर्ष से ज्यादा आयु के लोगों की संख्या :</label>
                <div class="row">
                    <div class="col-md-4">
                        <div class="input-group">
                            <span class="input-group-addon">पुरूष</span>
                            <asp:TextBox runat="server" ID="txt9a1" Placeholder="पुरूष" TextMode="Number" MaxLength="3" CssClass="form-control txt"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-md-4">
						<div class="input-group">
							<span class="input-group-addon">शिक्षित (संख्या)</span>
							<asp:TextBox runat="server" ID="txt9a2" Placeholder="शिक्षित (संख्या)" TextMode="Number" MaxLength="3" CssClass="form-control txt"></asp:TextBox>
						</div>
                    </div>
                    <div class="col-md-4">
						<div class="input-group">
							<span class="input-group-addon">काम काजी (संख्या)</span>
							<asp:TextBox runat="server" ID="txt9a3" Placeholder="काम काजी (संख्या)" TextMode="Number" MaxLength="3" CssClass="form-control txt"></asp:TextBox>
						</div>
                    </div>
                </div>
				<div class="row">
                    <div class="col-md-4">
                        <div class="input-group">
                            <span class="input-group-addon">महिला</span>
                            <asp:TextBox runat="server" ID="txt9b1" Placeholder="महिला" TextMode="Number" MaxLength="3" CssClass="form-control txt"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-md-4">
						<div class="input-group">
							<span class="input-group-addon">शिक्षित (संख्या)</span>
							<asp:TextBox runat="server" ID="txt9b2" Placeholder="शिक्षित (संख्या)" TextMode="Number" MaxLength="3" CssClass="form-control txt"></asp:TextBox>
						</div>
                    </div>
                    <div class="col-md-4">
						<div class="input-group">
							<span class="input-group-addon">काम काजी (संख्या)</span>
							<asp:TextBox runat="server" ID="txt9b3" Placeholder="काम काजी (संख्या)" TextMode="Number" MaxLength="3" CssClass="form-control txt"></asp:TextBox>
						</div>
                    </div>
				</div>


                <div class="input-group">
                    <span class="input-group-addon">10 - मकान की स्थिति</span>
                    <asp:DropDownList runat="server" ID="txt10" CssClass="form-control txt">
                        <asp:ListItem>चुनें</asp:ListItem>
                        <asp:ListItem>स्वयं का</asp:ListItem>
                        <asp:ListItem>पूर्वजों अथवा परिवार का</asp:ListItem>
                        <asp:ListItem>किराये का</asp:ListItem>
                    </asp:DropDownList>
                </div>

                <div class="input-group">
                    <span class="input-group-addon">11 - आवास का प्रकार</span>
                    <asp:DropDownList runat="server" ID="DropDownList1" CssClass="form-control txt">
                        <asp:ListItem>चुनें</asp:ListItem>
                        <asp:ListItem>कच्चा</asp:ListItem>
                        <asp:ListItem>पक्का</asp:ListItem>
                        <asp:ListItem>इन्दिरा आवास</asp:ListItem>
                        <asp:ListItem>आवास पट्टा</asp:ListItem>
                        <asp:ListItem>कांशीराम आवास</asp:ListItem>
                        <asp:ListItem>अन्य सरकारी आवास</asp:ListItem>
                    </asp:DropDownList>
                </div>
				<!--
                <div class="input-group">
                    <span class="input-group-addon">11 - क्या परिवार के पास मनरेगा जॉब कार्ड है?</span>
                    <asp:DropDownList runat="server" ID="txt11" CssClass="form-control txt">
                        <asp:ListItem>चुनें</asp:ListItem>
                        <asp:ListItem>हाँ</asp:ListItem>
                        <asp:ListItem>नहीं</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="input-group">
                    <span class="input-group-addon">12 - यदि हाँ, तो गत वर्ष कितने दिन का कार्य मिला है?</span>
                    <asp:TextBox runat="server" ID="txt12" Placeholder="दिनों की संख्या" TextMode="Number" MaxLength="50" CssClass="form-control txt" style="text-transform:uppercase;"></asp:TextBox>
                </div>
                <div class="input-group">
                    <span class="input-group-addon">13 - क्या वर्तमान में गाँव में मनरेगा के अन्तर्गत कोई कार्य हो रहा है?</span>
                    <asp:DropDownList runat="server" ID="txt13" CssClass="form-control txt">
                        <asp:ListItem>चुनें</asp:ListItem>
                        <asp:ListItem>हाँ</asp:ListItem>
                        <asp:ListItem>नहीं</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="input-group">
                    <span class="input-group-addon">14 - राशन कार्ड का प्रकार</span>
                    <asp:DropDownList runat="server" ID="txt14" CssClass="form-control txt">
                        <asp:ListItem>चुनें</asp:ListItem>
                        <asp:ListItem>बी पी एल</asp:ListItem>
                        <asp:ListItem>ए पी एल</asp:ListItem>
                        <asp:ListItem>अन्तयोदय</asp:ListItem>
                        <asp:ListItem>नहीं है</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="row">
                    <div class="col-xs-6">
                        <div class="input-group">
                            <span class="input-group-addon">15- कृषि योग्य भूमि</span>
                            <asp:TextBox runat="server" ID="txt15a" Placeholder="संख्या" MaxLength="50" CssClass="form-control txt" style="text-transform:uppercase;"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-xs-3">
                        <asp:DropDownList runat="server" ID="txt15b" CssClass="form-control txt">
                            <asp:ListItem>बिघाह / हेक्टेयर</asp:ListItem>
                            <asp:ListItem>बिघाह</asp:ListItem>
                            <asp:ListItem>हेक्टेयर</asp:ListItem>
                            <asp:ListItem>अन्य</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="col-xs-3">
                        <asp:DropDownList runat="server" ID="txt15c" CssClass="form-control txt">
                            <asp:ListItem>सिंचित / असिंचित</asp:ListItem>
                            <asp:ListItem>सिंचित</asp:ListItem>
                            <asp:ListItem>असिंचित</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>
                <div class="input-group">
                    <span class="input-group-addon">16 - आँगनबाड़ी केन्द्र</span>
                    <asp:DropDownList runat="server" ID="txt16" CssClass="form-control txt">
                        <asp:ListItem>चुनें</asp:ListItem>
                        <asp:ListItem>हाँ</asp:ListItem>
                        <asp:ListItem>नहीं</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="input-group">
                    <span class="input-group-addon">17 - क्या परिवार द्वारा किसी सरकारी योजना के अन्तर्गत ऋण लिया गया है?</span>
                    <asp:DropDownList runat="server" ID="txt17a" CssClass="form-control txt">
                        <asp:ListItem>चुनें</asp:ListItem>
                        <asp:ListItem>हाँ</asp:ListItem>
                        <asp:ListItem>नहीं</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="row">
                    <div class="col-md-1"></div>
                    <div class="col-md-6">
                        <div class="input-group">
                            <span class="input-group-addon">यदि हाँ तो योजना का नाम</span>
                            <asp:TextBox runat="server" ID="txt17b" Placeholder="योजना का नाम" MaxLength="100" CssClass="form-control txt" style="text-transform:uppercase;"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="input-group">
                            <span class="input-group-addon">वर्ष</span>
                            <asp:TextBox runat="server" ID="txt17c" Placeholder="वर्ष" TextMode="Number" MaxLength="50" CssClass="form-control txt" style="text-transform:uppercase;"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-md-1"></div>
                </div>
                <div class="row">
                    <div class="col-md-1"></div>
                    <div class="col-md-10">
                        <div class="input-group">
                            <span class="input-group-addon">18 - योजना में प्राप्त धनराशि ( रूपये में )</span>
                            <asp:TextBox runat="server" ID="txt18" Placeholder="धनराशि ( रूपये में )" TextMode="Number" MaxLength="50" CssClass="form-control txt" style="text-transform:uppercase;"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-md-1"></div>
                </div>
                <div class="row">
                    <div class="col-md-1"></div>
                    <div class="col-md-10">
                        <div class="input-group">
                            <span class="input-group-addon">19 - किस कार्य के लिए ऋण लिया गया</span>
                            <asp:TextBox runat="server" ID="txt19" Placeholder="कार्य" MaxLength="100" CssClass="form-control txt" style="text-transform:uppercase;"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-md-1"></div>
                </div>
                <div class="input-group">
                    <span class="input-group-addon">20 - क्या परिवार किसी सरकारी योजना के अन्तर्गत लाभ / ऋण लेना चाहता है?</span>
                    <asp:DropDownList runat="server" ID="txt20" CssClass="form-control txt">
                        <asp:ListItem>चुनें</asp:ListItem>
                        <asp:ListItem>हाँ</asp:ListItem>
                        <asp:ListItem>नहीं</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="input-group">
                    <span class="input-group-addon">21 - क्या सरकारी / प्राइमरी स्कूल परिवार के निवास से 500 गज की दूरी के भीतर स्थित है?</span>
                    <asp:DropDownList runat="server" ID="txt21" CssClass="form-control txt">
                        <asp:ListItem>चुनें</asp:ListItem>
                        <asp:ListItem>हाँ</asp:ListItem>
                        <asp:ListItem>नहीं</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="input-group">
                    <span class="input-group-addon">22 - यदि नहीं तब समीपस्थ प्राइमरी विद्यालय की दूरी (कि.मी. में) एवं नाम</span>
                    <asp:TextBox runat="server" ID="txt22" Placeholder="दूरी एवं विद्यालय का नाम" MaxLength="50" CssClass="form-control txt" style="text-transform:uppercase;"></asp:TextBox>
                </div>
                <div class="input-group">
                    <span class="input-group-addon">23 - विद्यालय की श्रेणी</span>
                    <asp:DropDownList runat="server" ID="txt23" CssClass="form-control txt">
                        <asp:ListItem>चुनें</asp:ListItem>
                        <asp:ListItem>सरकारी</asp:ListItem>
                        <asp:ListItem>गैर सरकारी</asp:ListItem>
                        <asp:ListItem>स्वैच्छिक संगठन</asp:ListItem>
                        <asp:ListItem>एन सी एल पी</asp:ListItem>
                    </asp:DropDownList>
                </div>
				-->
				<br />
            </div>
            <span style="color:red;font-family:karma;">* नोट : यह फार्म केवल ढ़ाँचा प्रदर्शित करने के लिए है।</span><br /><br />
        </div>
        <div class="col-lg-1">
        </div>

    </form>
    <script>
        $(".click-on").click(function () {
            $(".after-click").fadeIn();
        });
        var loader = document.getElementById("loader");
        window.addEventListener("load", function () {
            $("#loader").fadeOut("slow");
        });
    </script>
</body>
</html>
