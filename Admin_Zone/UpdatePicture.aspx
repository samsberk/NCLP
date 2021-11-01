<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UpdatePicture.aspx.cs" Inherits="Admin_Zone_UpdatePicture" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>NCLP Update Picture for Form-4</title>
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
        .picbox {
            height: 200px;
            width: 150px;
        }
        #picbox, #picbox2{
            background:none;
            border:none;
            margin-bottom:5px;
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
        <div class="upnav" style="text-align:left;">
            &emsp;<asp:Button runat="server" ID="backbtn" Text="Go Back" CssClass="btn btn-default btn-sm click-on" OnClick="backbtn_Click"/>
        </div>
        <div class="col-sm-1"></div>
        <div class="col-sm-10">
            <div class="login-panel">
                <h1 style="font-family:muli;font-weight:bold;text-align:center;">FORM : 4 (Update Picture)</h1>
                <hr /><h4 style="font-family:muli;font-weight:bold;">Details for -</h4>
                <span style="color:red;font-family:muli;font-weight:bold;font-size:15px;">Family Code</span> : <asp:Label runat="server" ID="lblfc" style="font-family:muli;font-size:15px;color:green;"></asp:Label><br />
                <span style="color:red;font-family:muli;font-weight:bold;font-size:15px;">Address</span> : <asp:Label runat="server" ID="lbladress" style="font-family:muli;font-size:15px;color:green;"></asp:Label>
                <hr /><h2 style="text-align:center;font-family:karma;font-weight:bold;">14 वर्ष से कम आयु के बालक जो कार्य कर रहे हैं, का विवरण</h2><hr />
                
                <div class="row">
                    <div class="col-sm-2"></div>
                    <div class="col-sm-4">
                        <h4 style="font-family:muli;font-weight:bold;">Current Picture</h4>
                        <div class="picbox">
                            <asp:Image runat="server" ID="opic1" style='max-height:200px;width:100%;'/>
                        </div>
                    </div>
                    <div class="col-sm-4">
                        <h4 style="font-family:muli;font-weight:bold;">New Picture</h4>
                        <div class="picbox" id="picbox">

                        </div>
                        <asp:FileUpload runat="server" ID="pic" CssClass="form-control txt"/>
                        <asp:Button runat="server" ID="btnp1" CssClass="btn btn-success btn-block click-on" Text="Upload Picture" OnClick="btnp1_Click" />
                    </div>
                    <div class="col-sm-2"></div>
                </div><br /><br /><hr />

                <div class="row">
                    <div class="col-sm-2"></div>
                    <div class="col-sm-4">
                        <h4 style="font-family:muli;font-weight:bold;">Current Selfie</h4>
                        <div class="picbox">
                            <asp:Image runat="server" ID="opic2" style='max-height:200px;width:100%;'/>
                        </div>
                    </div>
                    <div class="col-sm-4">
                        <h4 style="font-family:muli;font-weight:bold;">New Selfie</h4>
                        <div class="picbox" id="picbox2">

                        </div>
                        <asp:FileUpload runat="server" ID="pic2" CssClass="form-control txt"/>
                        <asp:Button runat="server" ID="btnp2" CssClass="btn btn-success btn-block click-on" Text="Upload Selfie" OnClick="btnp2_Click" />
                    </div>
                    <div class="col-sm-2"></div>
                </div><br />
                <asp:Button runat="server" ID="bbtn" Text="Go Back" CssClass="btn btn-danger click-on" style="font-weight:bold;" OnClick="bbtn_Click" /><br />
            </div>
        </div>
        <div class="col-sm-1"></div>
    </form>
    <script>
        $(".click-on").click(function () {
            $(".after-click").fadeIn();
        });
        var loader = document.getElementById("loader");
        window.addEventListener("load", function () {
            $("#loader").fadeOut("slow");
        });
        $("#btnp1").attr("disabled", true);
        $("#btnp2").attr("disabled", true);
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
                    if (a.files[0].size < 30720 || a.files[0].size > 102400) {
                        alert("Invalid file size. It should be 30KB-100KB.");
                        a.value = null;
                        $("#picbox img").remove();
                    }
                    else if (a.files[0].size > 30720 && a.files[0].size < 102400) {
                        var reader = new FileReader();
                        reader.onload = function (e) {
                            $("#picbox img").remove();
                            $("#picbox").append("<img style='max-height:200px;width:100%;'/>");
                            $("#picbox img").attr("src", e.target.result);
                            $("#btnp1").attr("disabled", false);
                        }
                        reader.readAsDataURL(a.files[0]);
                    }
                    else {
                        $("#picbox img").remove();
                    }
                }
                img.src = _URL.createObjectURL(a.files[0]);
            }
        });
        $("#pic2").bind("change", function () {
            var ext = $("#pic2").val().split('.').pop().toLowerCase();
            var a = document.getElementById("pic2");
            if ($.inArray(ext, ['jpg', 'jpeg', 'png']) == -1) {
                alert("Invalid File Type. It shoud be jpg, jpeg or png file.");
                a.value = null;
            }
            else {

                var _URL = window.URL;
                var img = new Image();
                img.onload = function () {
                    if (a.files[0].size < 30720 || a.files[0].size > 102400) {
                        alert("Invalid file size. It should be 30KB-100KB.");
                        a.value = null;
                        $("#picbox2 img").remove();
                    }
                    else {
                        var reader = new FileReader();
                        reader.onload = function (e) {
                            $("#picbox2 img").remove();
                            $("#picbox2").append("<img style='max-height:200px;width:100%;'/>");
                            $("#picbox2 img").attr("src", e.target.result);
                            $("#btnp2").attr("disabled", false);
                        }
                        reader.readAsDataURL(a.files[0]);
                    }
                }
                img.src = _URL.createObjectURL(a.files[0]);
            }
        });
    </script>
</body>
</html>
