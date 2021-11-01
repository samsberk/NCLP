<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SurveyorLogin.aspx.cs" Inherits="SurveyorLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>NCLP Survey Login</title>
    <meta name="theme-color" content="#f2f2f2" />
	<meta name="msApplication-navbutton-color" content="#f2f2f2" />
	<meta name="apple-mobile-web-app-status-bar-style" content="#f2f2f2" />
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="keywords" content="Dummy_Content" />
	<meta charset="utf-8"/>
	<meta name="viewport" content="width=device-width, initial-scale=1"/>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<link href="https://fonts.googleapis.com/css?family=Karma|Muli|Yantramanav" rel="stylesheet"/>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
    <link href="CSS/MyCSS.css" rel="stylesheet" />
    <script src="JS/MyJS.js"></script>
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
        label {
            font-size: 14px;
            font-family: karma;
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
        <div class="upnav" style="text-align:left;">
            &emsp;<a href="Home" class="btn btn-default click-on"><span class="glyphicon glyphicon-arrow-left"></span> Go Home <span class="glyphicon glyphicon-home"></span></a>
        </div>
        <div class="heading-main">
            <span>राष्ट्रीय बाल श्रम परियोजना के अन्तर्गत बुलन्दशहर जनपद में बाल श्रमिकों का सर्वेक्षण</span>
        </div>
        <div class="col-sm-4"></div>
        <div class="col-sm-4">
            <div class="login-panel">
                <p style="text-align:center;font-size:15px;font-family:muli;letter-spacing:2px;"><b>LOGIN HERE</b>&ensp;<span class="glyphicon glyphicon-log-in"></span></p><hr />
                
                <div class="input-group">
                    <span class="input-group-addon">
                        <span class="glyphicon glyphicon-user"></span>
                    </span>
                    <asp:DropDownList runat="server" ID="ltype" CssClass="form-control txt">
                        <asp:ListItem>Select Type</asp:ListItem>
                        <asp:ListItem>Surveyor</asp:ListItem>
                        <asp:ListItem>Administrator</asp:ListItem>
                    </asp:DropDownList>
                </div>
                
                <div class="input-group">
                    <span class="input-group-addon">
                        <span class="glyphicon glyphicon-envelope"></span>
                    </span>
                    <asp:TextBox runat="server" ID="emailtxt" CssClass="form-control txt" TextMode="Email" style="text-transform:lowercase;" Placeholder="Email ID" MaxLength="50"></asp:TextBox>
                </div>
                <div class="input-group">
                    <span class="input-group-addon">
                        <span class="glyphicon glyphicon-lock"></span>
                    </span>
                    <asp:TextBox runat="server" ID="passwordtxt" CssClass="form-control txt" TextMode="Password" Placeholder="Password" MaxLength="20"></asp:TextBox>
                </div>
                <asp:Button runat="server" ID="loginbtn" CssClass="btn btn-success click-on" Text="SECURE LOGIN" style="font-weight:bold;" OnClick="loginbtn_Click"/>
                <p style="text-align:right;font-size:13px;margin-bottom:0px;"><a href="Forgot_Password" class="click-on">Forgot Password</a></p>
            </div>
        </div>
        <div class="col-sm-4"></div>



        <footer class="main-footer">
            <div class="col-sm-6" style="text-align:center;">&copy; at NCPL Surveyor for Bulandshahar Dist. U.P.</div>
            <div class="col-sm-6" style="text-align:center;">All Rights Reserved | Designed By : samsberk</div>
        </footer>
    </form>
    <script>
        $(".click-on").click(function () {
            $(".after-click").fadeIn();
        });
        var loader = document.getElementById("loader");
        window.addEventListener("load", function () {
            $("#loader").fadeOut("slow");
        });
        $("#emailtxt").attr("disabled", true);
        $("#passwordtxt").attr("disabled", true);
        $("#loginbtn").attr("disabled", true);
        $("#ltype").bind("change", function () {
            $("#emailtxt").attr("disabled", false);
        });
        $("#emailtxt").focus(function () {
            $("#passwordtxt").attr("disabled", false);
        });
        $("#passwordtxt").focus(function () {
            $("#loginbtn").attr("disabled", false);
        });
    </script>
</body>
</html>
