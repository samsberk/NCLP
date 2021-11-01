<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Form5_Preview.aspx.cs" Inherits="Admin_Zone_Form5_Preview" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>NCLP Survey Form 5 Preview</title>
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
                <div class="col-sm-2"><br /><a href="Form4_Preview" class="btn btn-default click-on">Form 4 Preview</a></div>
                <div class="col-sm-2"><br /><a href="Form5_Preview" class="btn btn-default click-on">Form 5 Preview</a></div>
                </div>
            </div>
        </div><hr />
        <h2 style="text-align:center;font-weight:bold;font-family:muli;">Form 5 Preview</h2><hr />

        <div class="col-lg-1"></div>
        <div class="col-lg-10">
            <div class="login-panel">
                <h3 style="text-align:center;font-family:karma;font-weight:bold;">परिवार के 14 वर्ष पूर्ण कर चुके और उससे अधिक आयु के सदस्यों का विवरण</h3><hr />
                <label style="color:red;">महत्वपूर्ण : आप आंकड़ो की पूर्ति अपने सुविधानुसार हिन्दी / English में कर सकते हैं।</label>
                <div class="input-group">
                    <span class="input-group-addon">1 - क्रम संख्या</span>
                    <div class="form-control txt"><asp:Label runat="server" ID="txt1" Text="1"></asp:Label></div>
                </div>
                <div class="input-group">
                    <span class="input-group-addon">2 - नाम</span>
                    <asp:TextBox runat="server" ID="txt2" MaxLength="100" Placeholder="नाम" CssClass="form-control txt" style="text-transform:uppercase;"></asp:TextBox>
                </div>
                <div class="input-group">
                    <span class="input-group-addon">3 - लिंग</span>
                    <asp:DropDownList runat="server" ID="txt3" CssClass="form-control txt">
                        <asp:ListItem>चुनें</asp:ListItem>
                        <asp:ListItem>पुरूष</asp:ListItem>
                        <asp:ListItem>महिला</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="input-group">
                    <span class="input-group-addon">4 - परिवार के मुखिया से सम्बन्ध</span>
                    <asp:TextBox runat="server" ID="txt4" MaxLength="100" Placeholder="सम्बन्ध" CssClass="form-control txt" style="text-transform:uppercase;"></asp:TextBox>
                </div>
                <div class="input-group">
                    <span class="input-group-addon">5 - आयु 1-1-2017 को लगभग ( वर्ष में )</span>
                    <asp:TextBox runat="server" ID="txt5" TextMode="Number" Placeholder="आयु 1-1-2017 को लगभग ( वर्ष में )" CssClass="form-control txt" style="text-transform:uppercase;"></asp:TextBox>
                </div>
                <div class="input-group">
                    <span class="input-group-addon">6 - शैक्षिक स्तर</span>
                    <asp:DropDownList runat="server" ID="txt6" CssClass="form-control txt">
                        <asp:ListItem>चुनें</asp:ListItem>
                        <asp:ListItem>निरक्षर</asp:ListItem>
                        <asp:ListItem>प्राइमरी</asp:ListItem>
                        <asp:ListItem>मिडिल</asp:ListItem>
                        <asp:ListItem>हाईस्कूल</asp:ListItem>
                        <asp:ListItem>इण्टर</asp:ListItem>
                        <asp:ListItem>स्नातक</asp:ListItem>
                        <asp:ListItem>स्नातकोत्तर</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <label style="color:red;">यदि शिक्षारत है तो कालम-7 में कक्षा तथा वयस्क बेरोजगार है तो "बेरोजगार / UNEMPLOYEED" स्पष्ट रूप से अंकित करें।</label>
                <div class="input-group">
                    <span class="input-group-addon">7 - पेशा / व्यवसाय / कार्य</span>
                    <asp:TextBox runat="server" ID="txt7" MaxLength="100" Placeholder="पेशा / व्यवसाय / कार्य" CssClass="form-control txt" style="text-transform:uppercase;"></asp:TextBox>
                </div>
                <div class="input-group">
                    <span class="input-group-addon">8 - यदि नौकरी / मजदूरी / स्वयं का व्यवसाय है तो मासिक आय ( रूपये में )</span>
                    <asp:TextBox runat="server" ID="txt8" TextMode="Number" Placeholder="मासिक आय ( रूपये में )" CssClass="form-control txt" style="text-transform:uppercase;"></asp:TextBox>
                </div>
                <div class="row">
                    <div class="col-md-7">
                        <div class="input-group">
                            <span class="input-group-addon">9 - क्या प्रथम दृष्टया कोई स्वास्थ्य जनित समस्या है? ( हाँ / नहीं )</span>
                            <asp:DropDownList runat="server" ID="txt9" CssClass="form-control txt">
                                <asp:ListItem>चुनें</asp:ListItem>
                                <asp:ListItem>हाँ</asp:ListItem>
                                <asp:ListItem>नहीं</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>
                    <div class="col-md-5">
                        <div class="input-group">
                            <span class="input-group-addon">10 - यदि हाँ, तो क्या</span>
                            <asp:TextBox runat="server" ID="txt10" MaxLength="100" Placeholder="स्वास्थ्य जनित समस्या" CssClass="form-control txt" style="text-transform:uppercase;"></asp:TextBox>
                        </div>
                    </div>
                </div><br />
                
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
