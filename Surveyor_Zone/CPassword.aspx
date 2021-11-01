<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CPassword.aspx.cs" Inherits="Surveyor_Zone_CPassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>NCLP Surveyor Change Password</title>
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
            &emsp;<a href="Home" class="btn btn-info click-on">Home <span class="glyphicon glyphicon-home"></span></a>
            &emsp;<a href="Survey_Login" class="btn btn-info click-on">Surveyor Home <span class="glyphicon glyphicon-log-in"></span></a>
            &emsp;<a href="Surveyor_Logout" class="btn btn-danger click-on">Logout <span class="glyphicon glyphicon-log-out"></span></a>
        </div>
        <div class="col-sm-4"></div>
        <div class="col-sm-4">
            <div class="login-panel">
                <p style="text-align:center;font-size:15px;font-family:muli;letter-spacing:2px;"><b>CHANGE PASSWORD</b>&ensp;<span class="glyphicon glyphicon-edit"></span></p><hr />
                <asp:TextBox runat="server" ID="opastxt" TextMode="Password" MaxLength="20" placeholder="Enter Old Password" CssClass="form-control txt"></asp:TextBox>
                <asp:TextBox runat="server" ID="npastxt" TextMode="Password" MaxLength="20" placeholder="Enter New Password" CssClass="form-control txt"></asp:TextBox>
                <asp:TextBox runat="server" ID="rpastxt" TextMode="Password" MaxLength="20" placeholder="Re-enter Password" CssClass="form-control txt"></asp:TextBox>
                <asp:Button runat="server" ID="cpasbtn" CssClass="btn btn-success click-on" Text="CHANGE PASSWORD" style="font-weight:bold;" OnClick="cpasbtn_Click" />
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
        $("#npastxt").attr("disabled", true);
        $("#rpastxt").attr("disabled", true);
        $("#cpasbtn").attr("disabled", true);
        $("#opastxt").focus(function () {
            $("#npastxt").attr("disabled", false);
        });
        $("#npastxt").focus(function () {
            $("#rpastxt").attr("disabled", false);
        });
        $("#rpastxt").focus(function () {
            $("#cpasbtn").attr("disabled", false);
        });
    </script>
</body>
</html>
