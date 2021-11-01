<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SecForm.aspx.cs" Inherits="Surveyor_Zone_SecForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>NCLP Form 2 of 3</title>
    <meta name="theme-color" content="#f8f8ff" />
	<meta name="msApplication-navbutton-color" content="#f8f8ff" />
	<meta name="apple-mobile-web-app-status-bar-style" content="#f8f8ff" />
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="keywords" content="Dummy_Content" />
	<meta charset="utf-8"/>
	<meta http-equiv="Content-Type" content="text/html;charset=UTF-8" />
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
        .hide-label{
            display:none;
        }
        label{
            font-size:14px;
            font-family:karma;
        }
        .input-group span{
            font-weight:bold;
        }
        .input-group{
            margin-bottom:10px;
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
            &emsp;<a href="Surveyor_Logout" class="btn btn-danger click-on">Logout <span class="glyphicon glyphicon-log-out"></span></a>
        </div>
        <div class="col-lg-1"></div>
        <div class="col-lg-10">
            <div class="login-panel">
                <h1 style="font-family:muli;font-weight:bold;text-align:center;">FORM : 2</h1>
                <hr /><h4 style="font-family:muli;font-weight:bold;text-align:right;">Go to : <asp:Button runat="server" ID="jmpf1" CssClass="btn btn-info btn-xs click-on" Text="FORM 1" OnClick="jmpf1_Click" /></h4>
                <hr /><h4 style="font-family:muli;font-weight:bold;">Details for -</h4>
                <span style="color:red;font-family:muli;font-weight:bold;font-size:15px;">Family Code</span> : <asp:Label runat="server" ID="lblfc" style="font-family:muli;font-size:15px;color:green;"></asp:Label><br />
                <span style="color:red;font-family:muli;font-weight:bold;font-size:15px;">Address</span> : <asp:Label runat="server" ID="lbladress" style="font-family:muli;font-size:15px;color:green;"></asp:Label>
                <hr /><h2 style="text-align:center;font-family:karma;font-weight:bold;">परिवार के संबन्ध में विवरण</h2>
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
                    <asp:DropDownList runat="server" ID="txt11" CssClass="form-control txt">
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
                    <asp:DropDownList runat="server" ID="txt11a" CssClass="form-control txt">
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
                </div>-->

				<br /><div class="row">
                    <div class="col-md-12 text-center">
                        <asp:CheckBox runat="server" ID="agr" Text="&ensp;Agree" style="user-select:none;"/>
                    </div>
                </div>
                <asp:Button runat="server" ID="bbtn" Text="Back" CssClass="btn btn-danger pull-left click-on" style="font-weight:bold;" OnClick="bbtn_Click"/>
                <asp:Button runat="server" ID="nbtn" CssClass="btn btn-success pull-right click-on" style="font-weight:bold;" OnClick="nbtn_Click"/><br />
            </div>
            <br />
        </div>
        <div class="col-lg-1">
            <asp:Label runat="server" ID="label1" CssClass="hide-label" Text=""></asp:Label>
            <asp:Label runat="server" ID="label3" CssClass="hide-label" Text="चुनें"></asp:Label>
            <asp:Label runat="server" ID="label4" CssClass="hide-label" Text="चुनें"></asp:Label>
            <asp:Label runat="server" ID="label5" CssClass="hide-label" Text=""></asp:Label>
            <asp:Label runat="server" ID="label6" CssClass="hide-label" Text=""></asp:Label>
            <asp:Label runat="server" ID="label7a" CssClass="hide-label" Text=""></asp:Label>
            <asp:Label runat="server" ID="label7b" CssClass="hide-label" Text=""></asp:Label>
			<asp:Label runat="server" ID="label8a1" CssClass="hide-label" Text=""></asp:Label>
			<asp:Label runat="server" ID="label8a2" CssClass="hide-label" Text=""></asp:Label>
			<asp:Label runat="server" ID="label8a3" CssClass="hide-label" Text=""></asp:Label>
			<asp:Label runat="server" ID="label8b1" CssClass="hide-label" Text=""></asp:Label>
			<asp:Label runat="server" ID="label8b2" CssClass="hide-label" Text=""></asp:Label>
			<asp:Label runat="server" ID="label8b3" CssClass="hide-label" Text=""></asp:Label>
			<asp:Label runat="server" ID="label9a1" CssClass="hide-label" Text=""></asp:Label>
			<asp:Label runat="server" ID="label9a2" CssClass="hide-label" Text=""></asp:Label>
			<asp:Label runat="server" ID="label9a3" CssClass="hide-label" Text=""></asp:Label>
			<asp:Label runat="server" ID="label9b1" CssClass="hide-label" Text=""></asp:Label>
			<asp:Label runat="server" ID="label9b2" CssClass="hide-label" Text=""></asp:Label>
			<asp:Label runat="server" ID="label9b3" CssClass="hide-label" Text=""></asp:Label>
			<asp:Label runat="server" ID="label10" CssClass="hide-label" Text="चुनें"></asp:Label>
			<asp:Label runat="server" ID="label11" CssClass="hide-label" Text="चुनें"></asp:Label>
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
        $("#nbtn").attr("disabled", true);
        $("#nbtn").val("Please Agree before Submit");
        $("#txt12").attr("disabled", true);
        $("#txt17b").attr("disabled", true);
        $("#txt17c").attr("disabled", true);
        $("#txt18").attr("disabled", true);
        $("#txt2").attr("disabled", true);
        $("#txt19").attr("disabled", true);
        $("#txt22").attr("disabled", true);

        $("#pic").bind("change", function () {
            var ext = $("#pic").val().split('.').pop().toLowerCase();
            var a = document.getElementById("pic");
            if ($.inArray(ext, ['jpg', 'jpeg', 'png']) == -1) {
                alert("Invalid File Type. It shoud be jpg, jpeg or png file.");
                this.value = null;
            }
            else {
                
                var _URL = window.URL;
                var img = new Image();
                img.onload = function () {
                    if (this.height != "200" || this.width != "150") {
                        alert("Invalid Dimension. It should be 150*200 Pixel (means width=150px & height=200px)");
                        a.value = null;
                        $("#picbox img").remove();
                    }
                    else {
                        var reader = new FileReader();
                reader.onload = function (e) {
                    $("#picbox img").remove();
                    $("#picbox").append("<img />");
                    $("#picbox img").attr("src", e.target.result);
                }
                reader.readAsDataURL(pic.files[0]);
                    }
                }
                img.src = _URL.createObjectURL(this.files[0]);                
            }
        });

        $("#txt11").bind("change", function () {
            var t12 = document.getElementById("txt12");
            if ($("#txt11").val() == "हाँ") {
                $("#txt12").attr("disabled", false);
            }
            else {
                t12.value = "";
                $("#txt12").attr("disabled", true);
            }
        });
        $("#txt21").bind("change", function () {
            var t22 = document.getElementById("txt22");
            if ($("#txt21").val() == "नहीं") {
                $("#txt22").attr("disabled", false);
            }
            else {
                t22.value = "";
                $("#txt22").attr("disabled", true);
            }
        });
        $("#txt17a").bind("change", function () {
            var t17b = document.getElementById("txt17b");
            var t17c = document.getElementById("txt17c");
            var t18 = document.getElementById("txt18");
            var t19 = document.getElementById("txt19");
            if ($("#txt17a").val() == "हाँ") {
                $("#txt17b").attr("disabled", false);
                $("#txt17c").attr("disabled", false);
                $("#txt18").attr("disabled", false);
                $("#txt19").attr("disabled", false);
            }
            else {
                t17b.value = "";
                t17c.value = "";
                t18.value = "";
                t19.value = "";
                $("#txt17b").attr("disabled", true);
                $("#txt17c").attr("disabled", true);
                $("#txt18").attr("disabled", true);
                $("#txt19").attr("disabled", true);
            }
        });
        $("#txt7a").blur(function () {
            var t7a = document.getElementById("txt7a");
			if (t7a.value < 0) {
			alert("Enter correct value in 7 - परिवार के कुल सदस्यों की संख्या / पुरूष.");
			t7a.value = "";
			t7a.focus();
		}
        });
        $("#txt7b").blur(function () {
            var t7b = document.getElementById("txt7b");
			if (t7b.value < 0) {
				alert("Enter correct value in 7 - परिवार के कुल सदस्यों की संख्या / महिला.");
				t7b.value = "";
				t7b.focus();
			}
        });
        $("#txt8a1").blur(function () {
            var t8a = document.getElementById("txt8a1");
			if (t8a.value < 0) {
				alert("Enter correct value in 8 - परिवार में 14 वर्ष से कम आयु के बच्चों की संख्या / बालक.");
				t8a.value = "";
				t8a.focus();
			}
		});
		$("#txt8a2").blur(function () {
            var t8a = document.getElementById("txt8a2");
            if (t8a.value < 0) {
                alert("Enter correct value in 8 - परिवार में 14 वर्ष से कम आयु के बच्चों की संख्या / बालक / शिक्षित (संख्या).");
                t8a.value = "";
                t8a.focus();
            }
		});
		$("#txt8a3").blur(function () {
            var t8a = document.getElementById("txt8a3");
            if (t8a.value < 0) {
                alert("Enter correct value in 8 - परिवार में 14 वर्ष से कम आयु के बच्चों की संख्या / बालक / काम काजी (संख्या).");
                t8a.value = "";
                t8a.focus();
            }
		});
		$("#txt8b1").blur(function () {
            var t8a = document.getElementById("txt8b1");
			if (t8a.value < 0) {
				alert("Enter correct value in 8 - परिवार में 14 वर्ष से कम आयु के बच्चों की संख्या / बालिका.");
				t8a.value = "";
				t8a.focus();
			}
		});
		$("#txt8b2").blur(function () {
            var t8a = document.getElementById("txt8b2");
            if (t8a.value < 0) {
                alert("Enter correct value in 8 - परिवार में 14 वर्ष से कम आयु के बच्चों की संख्या / बालिका / शिक्षित (संख्या).");
                t8a.value = "";
                t8a.focus();
            }
		});
		$("#txt8b3").blur(function () {
            var t8a = document.getElementById("txt8b3");
            if (t8a.value < 0) {
                alert("Enter correct value in 8 - परिवार में 14 वर्ष से कम आयु के बच्चों की संख्या / बालिका / काम काजी (संख्या).");
                t8a.value = "";
                t8a.focus();
            }
		});
		$("#txt9a1").blur(function () {
            var t9a = document.getElementById("txt9a1");
			if (t9a.value < 0) {
				alert("Enter correct value in 9 - परिवार में 14 वर्ष से ज्यादा आयु के लोगों की संख्या / पुरूष.");
				t9a.value = "";
				t9a.focus();
			}
		});
		$("#txt9a2").blur(function () {
            var t9a = document.getElementById("txt9a2");
            if (t9a.value < 0) {
                alert("Enter correct value in 9 - परिवार में 14 वर्ष से ज्यादा आयु के लोगों की संख्या / पुरूष / शिक्षित (संख्या).");
                t9a.value = "";
                t9a.focus();
            }
		});
		$("#txt9a3").blur(function () {
            var t9a = document.getElementById("txt9a3");
            if (t9a.value < 0) {
                alert("Enter correct value in 9 - परिवार में 14 वर्ष से ज्यादा आयु के लोगों की संख्या / पुरूष / काम काजी (संख्या).");
                t9a.value = "";
                t9a.focus();
            }
		});
		$("#txt9b1").blur(function () {
            var t9a = document.getElementById("txt9b1");
			if (t9a.value < 0) {
				alert("Enter correct value in 9 - परिवार में 14 वर्ष से ज्यादा आयु के लोगों की संख्या / महिला.");
				t9a.value = "";
				t9a.focus();
			}
		});
		$("#txt9b2").blur(function () {
            var t9a = document.getElementById("txt9b2");
            if (t9a.value < 0) {
                alert("Enter correct value in 9 - परिवार में 14 वर्ष से ज्यादा आयु के लोगों की संख्या / महिला / शिक्षित (संख्या).");
                t9a.value = "";
                t9a.focus();
            }
		});
		$("#txt9b3").blur(function () {
            var t9a = document.getElementById("txt9b3");
            if (t9a.value < 0) {
                alert("Enter correct value in 9 - परिवार में 14 वर्ष से ज्यादा आयु के लोगों की संख्या / महिला / काम काजी (संख्या).");
                t9a.value = "";
                t9a.focus();
            }
		});

        
        $("#txt6").blur(function () {
            var t6 = document.getElementById("txt6");
            if (t6.value < 0) {
                alert("Enter correct value in 6 - पारिवारिक मासिक आय ( रूपये में ).");
                t6.value = "";
                t6.focus();
            }
        });
        $("#txt17c").blur(function () {
            var t17c = document.getElementById("txt17c");
            if (t17c.value > 9999 || t17c.value < 0) {
                alert("Enter correct value in 17 - क्या परिवार द्वारा किसी सरकारी योजना के अन्तर्गत ऋण लिया गया है? / वर्ष.");
                t17c.value = "";
                t17c.focus();
            }
        });
        $("#txt18").blur(function () {
            var t18 = document.getElementById("txt18");
            if (t18.value < 0) {
                alert("Enter correct value in 18 - योजना में प्राप्त धनराशि ( रूपये में ).");
                t18.value = "";
                t18.focus();
            }
        });
        $("#txt12").blur(function () {
            var t12 = document.getElementById("txt12");
            if (t12.value < 0 || t12.value > 365) {
                alert("Enter correct value in 12 - यदि हाँ, तो गत वर्ष कितने दिन का कार्य मिला है?.");
                t12.value = "";
                t12.focus();
            }
        });
        $("#agr").bind("change", function () {
            var ch = document.getElementById("agr");
            var t1 = document.getElementById("txt1");
            var t2 = document.getElementById("txt2");
            var t3 = document.getElementById("txt3");
            var t4 = document.getElementById("txt4");
            var t5 = document.getElementById("txt5");
            var t6 = document.getElementById("txt6");
            var t7a = document.getElementById("txt7a");
            var t7b = document.getElementById("txt7b");
            var t8a1 = document.getElementById("txt8a1");
            var t8a2 = document.getElementById("txt8a2");
            var t8a3 = document.getElementById("txt8a3");
            var t8b1 = document.getElementById("txt8b1");
            var t8b2 = document.getElementById("txt8b2");
            var t8b3 = document.getElementById("txt8b3");
            var t9a1 = document.getElementById("txt9a1");
            var t9a2 = document.getElementById("txt9a2");
            var t9a3 = document.getElementById("txt9a3");
            var t9b1 = document.getElementById("txt9b1");
            var t9b2 = document.getElementById("txt9b2");
            var t9b3 = document.getElementById("txt9b3");
            var t10 = document.getElementById("txt10");
            var t11 = document.getElementById("txt11");
            if (ch.checked == true) {
                if (t1.value == "") {
                    alert("Please Enter 1 - मुखिया का नाम first.");
                    ch.checked = false;
                    t1.focus();
                }
                else if (t2.value == "") {
                    alert("Please Enter 2 - पता first.");
                    ch.checked = false;
                    t2.focus();
                }
                else if ($("#txt3").val() == "चुनें") {
                    alert("Please Choose 3 - धर्म first.");
                    ch.checked = false;
                    t3.focus();
                }
                else if ($("#txt4").val() == "चुनें") {
                    alert("Please Choose 4 - जाति first.");
                    ch.checked = false;
                    t4.focus();
                }
                else if (t5.value == "") {
                    alert("Please Enter 5 - व्यवसाय first.");
                    ch.checked = false;
                    t5.focus();
                }
                else if (t6.value == "") {
                    alert("Please Enter 6 - पारिवारिक मासिक आय first.");
                    ch.checked = false;
                    t6.focus();
                }
                else if (t7a.value == "") {
                    alert("Please Enter 7 - परिवार के कुल सदस्यों की संख्या / पुरूष first.");
                    ch.checked = false;
                    t7a.focus();
                }
                else if (t7b.value == "") {
                    alert("Please Enter 7 - परिवार के कुल सदस्यों की संख्या / महिला first.");
                    ch.checked = false;
                    t7b.focus();
                }
                else if (t8a1.value == "") {
                    alert("Please Enter 8 - परिवार में 14 वर्ष से कम आयु के बच्चों की संख्या / बालक first.");
                    ch.checked = false;
                    t8a1.focus();
				}
				else if (t8a2.value == "") {
                    alert("Please Enter 8 - परिवार में 14 वर्ष से कम आयु के बच्चों की संख्या / बालक / शिक्षित (संख्या) first.");
                    ch.checked = false;
                    t8a2.focus();
				}
				else if (t8a3.value == "") {
                    alert("Please Enter 8 - परिवार में 14 वर्ष से कम आयु के बच्चों की संख्या / बालक / काम काजी (संख्या) first.");
                    ch.checked = false;
                    t8a3.focus();
				}
				else if (t8b1.value == "") {
                    alert("Please Enter 8 - परिवार में 14 वर्ष से कम आयु के बच्चों की संख्या / बालिका first.");
                    ch.checked = false;
                    t8b1.focus();
				}
				else if (t8b2.value == "") {
                    alert("Please Enter 8 - परिवार में 14 वर्ष से कम आयु के बच्चों की संख्या / बालिका / शिक्षित (संख्या) first.");
                    ch.checked = false;
                    t8b2.focus();
				}
				else if (t8b3.value == "") {
                    alert("Please Enter 8 - परिवार में 14 वर्ष से कम आयु के बच्चों की संख्या / बालिका / काम काजी (संख्या) first.");
                    ch.checked = false;
                    t8b3.focus();
				}
				else if (t9a1.value == "") {
                    alert("Please Enter 9 - परिवार में 14 वर्ष से ज्यादा आयु के लोगों की संख्या / पुरूष first.");
                    ch.checked = false;
                    t9a1.focus();
				}
				else if (t9a2.value == "") {
                    alert("Please Enter 9 - परिवार में 14 वर्ष से ज्यादा आयु के लोगों की संख्या / पुरूष / शिक्षित (संख्या) first.");
                    ch.checked = false;
                    t9a2.focus();
				}
				else if (t9a3.value == "") {
                    alert("Please Enter 9 - परिवार में 14 वर्ष से ज्यादा आयु के लोगों की संख्या / पुरूष / काम काजी (संख्या) first.");
                    ch.checked = false;
                    t9a3.focus();
				}
				else if (t9b1.value == "") {
                    alert("Please Enter 9 - परिवार में 14 वर्ष से ज्यादा आयु के लोगों की संख्या / महिला first.");
                    ch.checked = false;
                    t9b1.focus();
				}
				else if (t9b2.value == "") {
                    alert("Please Enter 9 - परिवार में 14 वर्ष से ज्यादा आयु के लोगों की संख्या / महिला / शिक्षित (संख्या) first.");
                    ch.checked = false;
                    t9b2.focus();
				}
				else if (t9b3.value == "") {
                    alert("Please Enter 9 - परिवार में 14 वर्ष से ज्यादा आयु के लोगों की संख्या / महिला / काम काजी (संख्या) first.");
                    ch.checked = false;
                    t9b3.focus();
				}
				else if ($("#txt10").val() == "चुनें") {
                    alert("Please Choose 10 - मकान की स्थिति first.");
                    ch.checked = false;
                    t10.focus();
				}
				else if ($("#txt11").val() == "चुनें") {
                    alert("Please Choose 11 - आवास का प्रकार first.");
                    ch.checked = false;
                    t11.focus();
                }
                /*else if (t8b.value == "") {
                    alert("Please Enter 8 - परिवार में 14 वर्ष से कम आयु के बच्चों की संख्या / बालिका first.");
                    ch.checked = false;
                    t8b.focus();
                }
                else if ($("#txt9").val() == "चुनें") {
                    alert("Please Choose 9 - मकान की स्थिति first.");
                    ch.checked = false;
                    t9.focus();
                }
                else if ($("#txt10").val() == "चुनें") {
                    alert("Please Choose 10 - आवास का प्रकार first.");
                    ch.checked = false;
                    t10.focus();
                }
                else if ($("#txt11").val() == "चुनें") {
                    alert("Please Choose 11 - क्या परिवार के पास मनरेगा जॉब कार्ड है? first.");
                    ch.checked = false;
                    t11.focus();
                }
                else if ($("#txt13").val() == "चुनें") {
                    alert("Please Choose 13 - क्या वर्तमान में गाँव में मनरेगा के अन्तर्गत कोई कार्य हो रहा है? first.");
                    ch.checked = false;
                    t13.focus();
                }
                else if ($("#txt14").val() == "चुनें") {
                    alert("Please Choose 14 - राशन कार्ड का प्रकार first.");
                    ch.checked = false;
                    t14.focus();
                }
                else if (t15a.value == "") {
                    alert("Please Enter 15- कृषि योग्य भूमि first.");
                    ch.checked = false;
                    t15a.focus();
                }
                else if ($("#txt15b").val() == "बिघाह / हेक्टेयर") {
                    alert("Please Choose 15- कृषि योग्य भूमि / बिघाह or हेक्टेयर first.");
                    ch.checked = false;
                    t15b.focus();
                }
                else if ($("#txt15c").val() == "सिंचित / असिंचित") {
                    alert("Please Choose 15- कृषि योग्य भूमि / सिंचित or असिंचित first.");
                    ch.checked = false;
                    t15c.focus();
                }
                else if ($("#txt16").val() == "चुनें") {
                    alert("Please Choose 16 - आँगनबाड़ी केन्द्र first.");
                    ch.checked = false;
                    t16.focus();
                }
                else if ($("#txt17a").val() == "चुनें") {
                    alert("Please Choose 17 - क्या परिवार द्वारा किसी सरकारी योजना के अन्तर्गत ऋण लिया गया है? first.");
                    ch.checked = false;
                    t17a.focus();
                }

                else if ($("#txt20").val() == "चुनें") {
                    alert("Please Choose 20 - क्या परिवार किसी सरकारी योजना के अन्तर्गत लाभ / ऋण लेना चाहता है? first.");
                    ch.checked = false;
                    t20.focus();
                }
                else if ($("#txt21").val() == "चुनें") {
                    alert("Please Choose 21 - क्या सरकारी / प्राइमरी स्कूल परिवार के निवास से 500 गज की दूरी के भीतर स्थित है? first.");
                    ch.checked = false;
                    t21.focus();
                }

                else if ($("#txt23").val() == "चुनें") {
                    alert("Please Choose 23 - विद्यालय की श्रेणी first.");
                    ch.checked = false;
                    t23.focus();
                }*/
                else {
                    /*if ($("#txt11").val() == "हाँ" && t12.value == "") {
                        alert("Please Enter 12 - यदि हाँ, तो गत वर्ष कितने दिन का कार्य मिला है? first.");
                        ch.checked = false;
                        t12.focus();

                    }
                    else if ($("#txt21").val() == "नहीं" && t22.value == "") {
                        alert("Please Choose 22 - यदि नहीं तब समीपस्थ प्राइमरी विद्यालय की दूरी (कि.मी. में) एवं नाम first.");
                        ch.checked = false;
                        t22.focus();

                    }
                    else  {
                        if ($("#txt17a").val() == "हाँ" && t17b.value == "") {
                            alert("Please Enter 17 - क्या परिवार द्वारा किसी सरकारी योजना के अन्तर्गत ऋण लिया गया है? / यदि हाँ तो योजना का नाम first.");
                            ch.checked = false;
                            t17b.focus();
                        }
                        else if ($("#txt17a").val() == "हाँ" && t17c.value == "") {
                            alert("Please Enter 17 - क्या परिवार द्वारा किसी सरकारी योजना के अन्तर्गत ऋण लिया गया है? / वर्ष first.");
                            ch.checked = false;
                            t17c.focus();
                        }
                        else if ($("#txt17a").val() == "हाँ" && t18.value == "") {
                            alert("Please Enter 18 - योजना में प्राप्त धनराशि ( रूपये में ) first.");
                            ch.checked = false;
                            t18.focus();
                        }
                        else if ($("#txt17a").val() == "हाँ" && t19.value == "") {
                            alert("Please Enter 19 - किस कार्य के लिए ऋण लिया गया first.");
                            ch.checked = false;
                            t19.focus();
                        }
                        else {
                            $("#nbtn").attr("disabled", false);
                            $("#nbtn").val("Submit & Next");
                        }
                    }*/
                    $("#nbtn").attr("disabled", false);
                    $("#nbtn").val("Submit & Next");
                }
            }
            else {
                $("#nbtn").attr("disabled", true);
                $("#nbtn").val("Please Agree before Submit");
            }
        });
        $(function () {
            var t1 = document.getElementById("txt1");
            var t3 = document.getElementById("txt3");
            var t4 = document.getElementById("txt4");
            var t5 = document.getElementById("txt5");
            var t6 = document.getElementById("txt6");
            var t7a = document.getElementById("txt7a");
            var t7b = document.getElementById("txt7b");
            var t8a1 = document.getElementById("txt8a1");
            var t8a2 = document.getElementById("txt8a2");
            var t8a3 = document.getElementById("txt8a3");
            var t8b1 = document.getElementById("txt8b1");
            var t8b2 = document.getElementById("txt8b2");
            var t8b3 = document.getElementById("txt8b3");
            var t9a1 = document.getElementById("txt9a1");
            var t9a2 = document.getElementById("txt9a2");
            var t9a3 = document.getElementById("txt9a3");
            var t9b1 = document.getElementById("txt9b1");
            var t9b2 = document.getElementById("txt9b2");
            var t9b3 = document.getElementById("txt9b3");
            var t10 = document.getElementById("txt10");
            var t11 = document.getElementById("txt11");
            t1.value = $("#label1").text();
            t3.value = $("#label3").text();
            t4.value = $("#label4").text();
            t5.value = $("#label5").text();
            t6.value = $("#label6").text();
            t7a.value = $("#label7a").text();
            t7b.value = $("#label7b").text();
            t8a1.value = $("#label8a1").text();
            t8a2.value = $("#label8a2").text();
            t8a3.value = $("#label8a3").text();
            t8b1.value = $("#label8b1").text();
            t8b2.value = $("#label8b2").text();
			t8b3.value = $("#label8b3").text();
			t9a1.value = $("#label9a1").text();
            t9a2.value = $("#label9a2").text();
            t9a3.value = $("#label9a3").text();
            t9b1.value = $("#label9b1").text();
            t9b2.value = $("#label9b2").text();
            t9b3.value = $("#label9b3").text();
            t10.value = $("#label10").text();
            t11.value = $("#label11").text();
        });
    </script>
</body>
</html>
