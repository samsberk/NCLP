<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Form1_Preview.aspx.cs" Inherits="Admin_Zone_Form1_Preview" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>NCLP Survey Form 1 Preview</title>
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
        </div><hr />
        <h2 style="text-align:center;font-weight:bold;font-family:muli;">Form 1 Preview</h2>
        <hr />

        <div class="col-md-1"></div>
        <div class="col-md-10">
            <div class="login-panel">
            <p style="text-align:right;">प्रपत्र संख्या : <asp:Label runat="server" ID="prapatranolbl"></asp:Label></p>
                <div class="heading-main" style="font-size:3vw;padding:10px;margin:10px;">
                    <span>राष्ट्रीय बाल श्रम परियोजना के अन्तर्गत बुलन्दशहर जनपद में बाल श्रमिकों का सर्वेक्षण <br /><span style="font-size:2vw;">(ताकि उन्हें आवश्यक सहायता दी जा सके)</span></span><hr />
                </div>
                <div class="row">
                    <div class="col-lg-1"></div>
                    <div class="col-lg-10">
                        <label style="color:red;">महत्वपूर्ण : आप आंकड़ो की पूर्ति अपने सुविधानुसार हिन्दी / English में कर सकते हैं।</label>
                        <div class="input-group">
                            <span class="input-group-addon">जनपद का नाम</span>
                            <asp:TextBox runat="server" ID="janpadtxt" MaxLength="100" placeholder="जनपद का नाम" CssClass="form-control txt" style="text-transform:uppercase;"></asp:TextBox>
                        </div>
                        <div class="input-group">
                            <span class="input-group-addon">तहसील का नाम</span>
                            <asp:TextBox runat="server" ID="tahasiltxt" MaxLength="100" placeholder="तहसील का नाम" CssClass="form-control txt" style="text-transform:uppercase;"></asp:TextBox>
                        </div>
                        <div class="input-group">
                            <span class="input-group-addon">शहर का नाम</span>
                            <asp:TextBox runat="server" ID="shahartxt" MaxLength="100" placeholder="शहर का नाम" CssClass="form-control txt" style="text-transform:uppercase;"></asp:TextBox>
                        </div>
                        <div class="input-group">
                            <span class="input-group-addon">मोहल्ला / गाँव का नाम</span>
                            <asp:TextBox runat="server" ID="gaontxt" MaxLength="100" placeholder="मोहल्ला / गाँव का नाम" CssClass="form-control txt" style="text-transform:uppercase;"></asp:TextBox>
                        </div>
                        <div class="input-group">
                            <span class="input-group-addon">वार्ड संख्या</span>
                            <asp:TextBox runat="server" ID="wardtxt" MaxLength="4" placeholder="वार्ड संख्या" CssClass="form-control txt" style="text-transform:uppercase;"></asp:TextBox>
                        </div>
                        <div class="input-group">
                            <span class="input-group-addon">मकान संख्या</span>
                            <asp:TextBox runat="server" ID="makantxt" MaxLength="4" placeholder="मकान संख्या" CssClass="form-control txt" style="text-transform:uppercase;"></asp:TextBox>
                        </div>
                        <div class="input-group">
                            <span class="input-group-addon">सर्वेकर्ता का नाम</span>
                            <asp:TextBox runat="server" ID="surveyortxt" MaxLength="100" placeholder="सर्वेकर्ता का नाम" CssClass="form-control txt" style="text-transform:uppercase;"></asp:TextBox>
                        </div>
                        
                        
                    </div>
                    <div class="col-lg-1"></div>
                </div>
            </div><span style="color:red;font-family:karma;">* नोट : यह फार्म केवल ढ़ाँचा प्रदर्शित करने के लिए है।</span><br /><br />
        </div>
        <div class="col-md-1">
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
