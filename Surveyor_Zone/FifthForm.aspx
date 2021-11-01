<%@ Page Language="C#" AutoEventWireup="true" CodeFile="FifthForm.aspx.cs" Inherits="Surveyor_Zone_FifthForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>NCLP Form 6 of 6</title>
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
                <h1 style="font-family:muli;font-weight:bold;text-align:center;">FORM : 5</h1>
                <hr /><h4 style="font-family:muli;font-weight:bold;text-align:right;">Go to : <asp:Button runat="server" ID="jmpf1" CssClass="btn btn-info btn-xs click-on" Text="FORM 1" OnClick="jmpf1_Click" /> | <asp:Button runat="server" ID="jmpf2" CssClass="btn btn-info btn-xs click-on" Text="FORM 2" OnClick="jmpf2_Click" /> | <asp:Button runat="server" ID="jmpf3" CssClass="btn btn-info btn-xs click-on" Text="FORM 3" OnClick="jmpf3_Click" /> | <asp:Button runat="server" ID="jmpf4" CssClass="btn btn-info btn-xs click-on" Text="FORM 4" OnClick="jmpf4_Click" /></h4>
                <hr /><h4 style="font-family:muli;font-weight:bold;">Details for -</h4>
                <span style="color:red;font-family:muli;font-weight:bold;font-size:15px;">Family Code</span> : <asp:Label runat="server" ID="lblfc" style="font-family:muli;font-size:15px;color:green;"></asp:Label><br />
                <span style="color:red;font-family:muli;font-weight:bold;font-size:15px;">Address</span> : <asp:Label runat="server" ID="lbladress" style="font-family:muli;font-size:15px;color:green;"></asp:Label>
                <hr /><h2 style="text-align:center;font-family:karma;font-weight:bold;">परिवार के 14 वर्ष पूर्ण कर चुके और उससे अधिक आयु के सदस्यों का विवरण</h2>
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
                <div class="row">
                    <div class="col-md-12 text-center">
                        <asp:CheckBox runat="server" ID="agr" Text="&ensp;Agree" style="user-select:none;"/>
                    </div>
                </div>

                <asp:Button runat="server" ID="bbtn" Text="Back" CssClass="btn btn-danger pull-left click-on" style="font-weight:bold;" OnClick="bbtn_Click" />
                <asp:Button runat="server" ID="nbtn" Text="Final Submit" CssClass="btn btn-success pull-right click-on" style="font-weight:bold;" OnClick="nbtn_Click" />
                <asp:Button runat="server" ID="onebtn" CssClass="btn btn-success pull-right click-on" Text="Submit & Add One More" style="font-weight:bold;margin-right:10px;" OnClick="onebtn_Click" /><br />
            </div><br />
        </div>
        <div class="col-lg-1">
            <asp:Label runat="server" ID="label2" CssClass="hide-label" Text=""></asp:Label>
            <asp:Label runat="server" ID="label3" CssClass="hide-label" Text="चुनें"></asp:Label>
            <asp:Label runat="server" ID="label4" CssClass="hide-label" Text=""></asp:Label>
            <asp:Label runat="server" ID="label5" CssClass="hide-label" Text=""></asp:Label>
            <asp:Label runat="server" ID="label6" CssClass="hide-label" Text="चुनें"></asp:Label>
            <asp:Label runat="server" ID="label7" CssClass="hide-label" Text=""></asp:Label>
            <asp:Label runat="server" ID="label8" CssClass="hide-label" Text=""></asp:Label>
            <asp:Label runat="server" ID="label9" CssClass="hide-label" Text="चुनें"></asp:Label>
            <asp:Label runat="server" ID="label10" CssClass="hide-label" Text=""></asp:Label>
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
        $("#txt10").attr("disabled", true);
        $("#onebtn").hide();
        $("#nbtn").val("Please Agree before Submit");
        $("#txt8").blur(function () {
            var t8 = document.getElementById("txt8");
            if (t8.value < 0) {
                alert("Enter correct value in 8 - आय प्रतिदिन ( रूपयों में ).");
                t8.value = "";
                t8.focus();
            }
        });
        $("#txt5").blur(function () {
            var t5 = document.getElementById("txt5");
            if (t5.value == 0) {

            }
            else if (t5.value >= 15 && t6b.value <= 150) {

            }
            else {
                alert("Enter correct value in 5 - आयु 1-1-2017 को लगभग ( वर्ष में ).");
                t5.value = "";
                t5.focus();
            }
        });
        $("#txt9").bind("change", function () {
            var t9 = document.getElementById("txt9");
            var t10 = document.getElementById("txt10");
            if ($("#txt9").val() == "हाँ") {
                $("#txt10").attr("disabled", false);
            }
            else {
                t10.value = "";
                $("#txt10").attr("disabled", true);
            }
        });
        $("#agr").bind("change", function () {
            var ch = document.getElementById("agr");
            var t2 = document.getElementById("txt2");
            var t3 = document.getElementById("txt3");
            var t4 = document.getElementById("txt4");
            var t5 = document.getElementById("txt5");
            var t6 = document.getElementById("txt6");
            var t7 = document.getElementById("txt7");
            var t8 = document.getElementById("txt8");
            var t9 = document.getElementById("txt9");
            var t10 = document.getElementById("txt10");
            if (ch.checked == true) {
                if (t2.value=="") {
                    alert("Please Enter 2 - नाम first.");
                    ch.checked = false;
                    t2.focus();
                }
                /*else if ($("#txt3").val() == "चुनें") {
                    alert("Please Choose 3 - लिंग first.");
                    ch.checked = false;
                    t3.focus();
                }
                else if (t4.value=="") {
                    alert("Please Enter 4 - परिवार के मुखिया से सम्बन्ध first.");
                    ch.checked = false;
                    t4.focus();
                }
                else if (t5.value=="") {
                    alert("Please Enter 5 - आयु 1-1-2017 को ( लगभग ) first.");
                    ch.checked = false;
                    t5.focus();
                }
                else if ($("#txt6").val() == "चुनें") {
                    alert("Please Choose 6 - शैक्षिक स्तर first.");
                    ch.checked = false;
                    t6.focus();
                }
                else if (t7.value=="") {
                    alert("Please Enter 7 - पेशा / व्यवसाय / कार्य first.");
                    ch.checked = false;
                    t7.focus();
                }
                else if (t8.value=="") {
                    alert("Please Enter 8 - यदि नौकरी / मजदूरी / स्वयं का व्यवसाय है तो मासिक आय ( रूपये में ) first.");
                    ch.checked = false;
                    t8.focus();
                }
                else if ($("#txt9").val() == "चुनें") {
                    alert("Please Choose 9 - क्या प्रथम दृष्टया कोई स्वास्थ्य जनित समस्या है? ( हाँ / नहीं ) first.");
                    ch.checked = false;
                    t9.focus();
                }*/
                else {
                    /*if ($("#txt9").val() == "हाँ" && t10.value=="") {
                        alert("Please Choose 10 - यदि हाँ, तो क्या first.");
                        ch.checked = false;
                        t10.focus();
                    }
                    else {
                        $("#nbtn").attr("disabled", false);
                        $("#onebtn").show();
                        $("#nbtn").val("Final Submit");
                    }*/
                    $("#nbtn").attr("disabled", false);
                    $("#onebtn").show();
                    $("#nbtn").val("Final Submit");
                }
            }
            else {
                $("#nbtn").attr("disabled", true);
                $("#onebtn").hide();
                $("#nbtn").val("Please Agree before Submit");
            }
        });
        $(function () {
            var t2 = document.getElementById("txt2");
            var t3 = document.getElementById("txt3");
            var t4 = document.getElementById("txt4");
            var t5 = document.getElementById("txt5");
            var t6 = document.getElementById("txt6");
            var t7 = document.getElementById("txt7");
            var t8 = document.getElementById("txt8");
            var t9 = document.getElementById("txt9");
            var t10 = document.getElementById("txt10");
            t2.value = $("#label2").text();
            t3.value = $("#label3").text();
            t4.value = $("#label4").text();
            t5.value = $("#label5").text();
            t6.value = $("#label6").text();
            t7.value = $("#label7").text();
            t8.value = $("#label8").text();
            t9.value = $("#label9").text();
            if (t9.value == "हाँ") {
                $("#txt10").attr("disabled", false);
            }
            t10.value = $("#label10").text();
        });
    </script>
</body>
</html>
