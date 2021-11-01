<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Surveyor_Zone_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>NCLP Surveyor Home</title>
    <meta name="theme-color" content="#f8f8ff" />
	<meta name="msApplication-navbutton-color" content="#f8f8ff" />
	<meta name="apple-mobile-web-app-status-bar-style" content="#f8f8ff" />
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="keywords" content="Dummy_Content" />
	<meta http-equiv="Content-Type" content="text/html;charset=UTF-8" />
	<meta charset="utf-8"/>
	<meta name="viewport" content="width=device-width, initial-scale=1"/>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<link href="https://fonts.googleapis.com/css?family=Karma|Muli|Yantramanav" rel="stylesheet"/>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
    <link href="../CSS/MyCSS.css" rel="stylesheet"/>
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
        #lbl1,#lbl2,#lbl3,#lbl4,#lbl5,#lbl6,#lbl7{
            display:none;
        }
        label{
            font-size:14px;
            font-family:karma;
        }
        .input-group span{
            font-weight:bold;
            font-family:karma;
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
            &emsp;<a href="Surveyor_Change_Password" class="btn btn-warning click-on">Password <span class="glyphicon glyphicon-edit"></span></a>
            &emsp;<a href="Surveyor_Logout" class="btn btn-danger click-on">Logout <span class="glyphicon glyphicon-log-out"></span></a>
        </div>
        <div class="col-md-1"></div>
        <div class="col-md-10">
            <div class="login-panel">
                <h1 style="font-family:muli;font-weight:bold;text-align:center;">FORM : 1</h1>
                <hr /><p style="text-align:right;">प्रपत्र संख्या : <asp:Label runat="server" ID="prapatranolbl"></asp:Label></p>
                <hr /><h4 style="font-family:muli;font-weight:bold;">Details for -</h4>
                <span style="color:red;font-family:muli;font-weight:bold;font-size:15px;">Family Code</span> : <asp:Label runat="server" ID="lblfc" style="font-family:muli;font-size:15px;color:green;"></asp:Label><br />
                <span style="color:red;font-family:muli;font-weight:bold;font-size:15px;">Address</span> : <asp:Label runat="server" ID="lbladress" style="font-family:muli;font-size:15px;color:green;"></asp:Label>
                <hr /><div class="heading-main" style="font-size:3vw;padding:10px;margin:10px;">
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
                        <div class="row">
                            <div class="col-md-12 text-center">
                                <asp:CheckBox runat="server" ID="agr" Text="&ensp;Agree" style="user-select:none;"/>
                            </div>
                        </div>
                        <asp:Button runat="server" ID="f1" Text="Next" CssClass="btn btn-success pull-right click-on" style="font-weight:bold;" OnClick="f1_Click"/><br />
                        
                    </div>
                    <div class="col-lg-1"></div>
                </div>
            </div><br />
        </div>
        <div class="col-md-1">
            <asp:Label runat="server" ID="lbl1" Text=""></asp:Label>
            <asp:Label runat="server" ID="lbl2" Text=""></asp:Label>
            <asp:Label runat="server" ID="lbl3" Text=""></asp:Label>
            <asp:Label runat="server" ID="lbl4" Text=""></asp:Label>
            <asp:Label runat="server" ID="lbl5" Text=""></asp:Label>
            <asp:Label runat="server" ID="lbl6" Text=""></asp:Label>
            <asp:Label runat="server" ID="lbl7" Text=""></asp:Label>
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
        $(function () {
            var janpad = document.getElementById("janpadtxt");
            var shahar = document.getElementById("shahartxt");
            var gaon = document.getElementById("gaontxt");
            var tahasil = document.getElementById("tahasiltxt");
            var surveyor = document.getElementById("surveyortxt");
            var ward = document.getElementById("wardtxt");
            var makan = document.getElementById("makantxt");
            janpad.value= $("#lbl1").text();
            tahasil.value= $("#lbl2").text();
            shahar.value= $("#lbl3").text();
            gaon.value= $("#lbl4").text();
            ward.value= $("#lbl5").text();
            makan.value= $("#lbl6").text();
            surveyor.value= $("#lbl7").text();
        });
        
        $("#f1").attr("disabled", true);
        $("#f1").val("Please Agree before Submit");
        $("#agr").bind("change", function () {
            var ch = document.getElementById("agr");
            var janpad = document.getElementById("janpadtxt");
            var shahar = document.getElementById("shahartxt");
            var gaon = document.getElementById("gaontxt");
            var tahasil = document.getElementById("tahasiltxt");
            var surveyor = document.getElementById("surveyortxt");
            var ward = document.getElementById("wardtxt");
            var makan = document.getElementById("makantxt");
            if (ch.checked == true) {
                
                if (janpad.value=="") {
                    alert("Please Enter जनपद first.");
                    ch.checked = false;
                    janpad.focus();
                }
                else if (tahasil.value == "") {
                    alert("Please Enter तहसील first.");
                    ch.checked = false;
                    tahasil.focus();
                }
                else if (shahar.value == "") {
                    alert("Please Enter शहर first.");
                    ch.checked = false;
                    shahar.focus();
                }
                else if (gaon.value == "") {
                    alert("Please Enter गाँव / मोहल्ला first.");
                    ch.checked = false;
                    gaon.focus();
                }
                else if (ward.value == "") {
                    alert("Please Enter वार्ड नं. first.");
                    ch.checked = false;
                    ward.focus();
                }
                else if (makan.value == "") {
                    alert("Please Enter मकान नं. first.");
                    ch.checked = false;
                    makan.focus();
                }
                else if (surveyor.value == "") {
                    alert("Please Enter सर्वेकर्ता first.");
                    ch.checked = false;
                    surveyor.focus();
                }
                else {
                    $("#f1").attr("disabled", false);
                    $("#f1").val("Submit & Next");
                }
            }
            else {
                $("#f1").attr("disabled", true);
                $("#f1").val("Please Agree before Submit");
            }
        });
    </script>
</body>
</html>
