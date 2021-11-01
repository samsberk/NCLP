<%@ Page Language="C#" AutoEventWireup="true" CodeFile="thirdForm.aspx.cs" Inherits="Surveyor_Zone_thirdForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>NCLP Form 3 of 6</title>
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
                <h1 style="font-family:muli;font-weight:bold;text-align:center;">FORM : 3</h1>
                <hr /><h4 style="font-family:muli;font-weight:bold;text-align:right;">Go to : <asp:Button runat="server" ID="jmpf1" CssClass="btn btn-info btn-xs click-on" Text="FORM 1" OnClick="jmpf1_Click" /> | <asp:Button runat="server" ID="jmpf2" CssClass="btn btn-info btn-xs click-on" Text="FORM 2" OnClick="jmpf2_Click" /></h4>
                <hr /><h4 style="font-family:muli;font-weight:bold;">Details for -</h4>
                <span style="color:red;font-family:muli;font-weight:bold;font-size:15px;">Family Code</span> : <asp:Label runat="server" ID="lblfc" style="font-family:muli;font-size:15px;color:green;"></asp:Label><br />
                <span style="color:red;font-family:muli;font-weight:bold;font-size:15px;">Address</span> : <asp:Label runat="server" ID="lbladress" style="font-family:muli;font-size:15px;color:green;"></asp:Label>
                <hr /><h2 style="text-align:center;font-family:karma;font-weight:bold;">14 वर्ष से कम आयु के बालक जो कार्य नहीं कर रहे हैं, का विवरण</h2>
                <label style="color:red;">महत्वपूर्ण : आप आंकड़ो की पूर्ति अपने सुविधानुसार हिन्दी / English में कर सकते हैं।</label>
                <div class="input-group">
                    <span class="input-group-addon">1 - क्रम संख्या</span>
                    <div class="form-control txt"><asp:Label runat="server" ID="txt1"></asp:Label></div>
                </div>
                <div class="input-group">
                    <span class="input-group-addon">2 - बालक / बालिका का नाम</span>
                    <asp:TextBox runat="server" ID="txt2" Placeholder="बालक / बालिका का नाम" MaxLength="100" CssClass="form-control txt" style="text-transform:uppercase;"></asp:TextBox>
                </div>
                <div class="input-group">
                    <span class="input-group-addon">3 - पुरूष / महिला</span>
                    <asp:DropDownList runat="server" ID="txt3" CssClass="form-control txt">
                        <asp:ListItem>चुनें</asp:ListItem>
                        <asp:ListItem>पुरूष</asp:ListItem>
                        <asp:ListItem>महिला</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="input-group">
                    <span class="input-group-addon">4 - जन्म वर्ष अथवा 1-1-2017 को लगभग आयु ( वर्ष में )</span>
                    <asp:TextBox runat="server" ID="txt4" Placeholder="जन्म वर्ष अथवा 1-1-2017 को लगभग आयु ( वर्ष में )" TextMode="Number" CssClass="form-control txt" style="text-transform:uppercase;"></asp:TextBox>
                </div>
                <div class="input-group">
                    <span class="input-group-addon">5 - कक्षा जिसमें अध्ययनरत है</span>
                    <asp:TextBox runat="server" ID="txt5" Placeholder="कक्षा जिसमें अध्ययनरत है" TextMode="Number" CssClass="form-control txt" style="text-transform:uppercase;"></asp:TextBox>
                </div>
                <div class="input-group">
                    <span class="input-group-addon">6 - विद्यालय का नाम जिसमें पढ़ रहा है</span>
                    <asp:TextBox runat="server" ID="txt6" Placeholder="विद्यालय का नाम जिसमें पढ़ रहा है" MaxLength="100" CssClass="form-control txt" style="text-transform:uppercase;"></asp:TextBox>
                </div>
                <div class="input-group">
                    <span class="input-group-addon">7 - विद्यालय की श्रेणी</span>
                    <asp:DropDownList runat="server" ID="txt7" CssClass="form-control txt">
                                    <asp:ListItem>चुनें</asp:ListItem>
                                    <asp:ListItem>सरकारी स्कूल</asp:ListItem>
                                    <asp:ListItem>निजी स्कूल</asp:ListItem>
                                    <asp:ListItem>बालक कभी स्कूल नहीं गया</asp:ListItem>
                                </asp:DropDownList>
                </div>
                <div class="login-panel" style="margin-bottom:15px;padding:10px 15px;">
                <label>विद्यालय में दी जा रही सुविधायें हैं ( कालम-8 से कालम-11 ) :</label>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="input-group">
                                <span class="input-group-addon">8 - निःशुल्क शिक्षा ( हाँ / नहीं )</span>
                                <asp:DropDownList runat="server" ID="txt8" CssClass="form-control txt">
                                    <asp:ListItem>चुनें</asp:ListItem>
                                    <asp:ListItem>हाँ</asp:ListItem>
                                    <asp:ListItem>नहीं</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="input-group">
                                <span class="input-group-addon">9 - पाठ्य पुस्तक लेखन सामग्री ( हाँ / नहीं )</span>
                                <asp:DropDownList runat="server" ID="txt9" CssClass="form-control txt">
                                    <asp:ListItem>चुनें</asp:ListItem>
                                    <asp:ListItem>हाँ</asp:ListItem>
                                    <asp:ListItem>नहीं</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="input-group">
                                <span class="input-group-addon">10 - मध्यान्ह भोजन ( हाँ / नहीं )</span>
                                <asp:DropDownList runat="server" ID="txt10" CssClass="form-control txt">
                                    <asp:ListItem>चुनें</asp:ListItem>
                                    <asp:ListItem>हाँ</asp:ListItem>
                                    <asp:ListItem>नहीं</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="input-group">
                                <span class="input-group-addon">11 - छात्रवृत्ति वार्षिक ( रूपये में )</span>
                                <asp:TextBox runat="server" ID="txt11" TextMode="Number" Placeholder="यदि हाँ तो धनराशि ( रूपये में ) अन्यथा शून्य" MaxLength="50" CssClass="form-control txt" style="text-transform:uppercase;"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-5">
                        <div class="input-group">
                            <span class="input-group-addon">12 - क्या पढने जाता है? ( हाँ / नहीं )</span>
                            <asp:DropDownList runat="server" ID="txt12a" CssClass="form-control txt">
                                    <asp:ListItem>चुनें</asp:ListItem>
                                    <asp:ListItem>हाँ</asp:ListItem>
                                    <asp:ListItem>नहीं</asp:ListItem>
                                </asp:DropDownList>
                        </div>
                    </div>
                    <div class="col-md-7">
                        <div class="input-group">
                            <span class="input-group-addon">यदि पढ़ने नहीं जाता तो क्या करता है</span>
                            <asp:TextBox runat="server" ID="txt12b" Placeholder="कहीं मजदूरी करता है, घरेलू कार्य / घरेलू व्यवसाय में सहायता" MaxLength="50" CssClass="form-control txt" style="text-transform:uppercase;"></asp:TextBox>
                        </div>
                    </div>
                </div>
                
                <div class="row">
                    <div class="col-md-6">
                        <div class="input-group">
                            <span class="input-group-addon">13 - क्या कभी पूर्व में पढने गया है ( हाँ / नहीं )</span>
                            <asp:DropDownList runat="server" ID="txt13" CssClass="form-control txt">
                                    <asp:ListItem>चुनें</asp:ListItem>
                                    <asp:ListItem>हाँ</asp:ListItem>
                                    <asp:ListItem>नहीं</asp:ListItem>
                                </asp:DropDownList>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="input-group">
                            <span class="input-group-addon">14 - यदि हाँ तो किस कक्षा से पढ़ना छोड़ा</span>
                            <asp:TextBox runat="server" ID="txt14" Placeholder="कक्षा" TextMode="Number" MaxLength="50" CssClass="form-control txt" style="text-transform:uppercase;"></asp:TextBox>
                        </div>
                    </div>
                </div><br />
                <div class="row">
                    <div class="col-md-12 text-center">
                        <asp:CheckBox runat="server" ID="agr" Text="&ensp;Agree" style="user-select:none;"/>
                    </div>
                </div>
                <asp:Button runat="server" ID="bbtn" Text="Back" CssClass="btn btn-danger pull-left click-on" style="font-weight:bold;" OnClick="bbtn_Click" />
                <asp:Button runat="server" ID="nbtn" Text="Next" CssClass="btn btn-success pull-right click-on" style="font-weight:bold;" OnClick="nbtn_Click" />
                <asp:Button runat="server" ID="onebtn" CssClass="btn btn-success pull-right click-on" Text="Submit & Add One More" style="font-weight:bold;margin-right:10px;" OnClick="onebtn_Click" /><br />
                <br /><asp:Button runat="server" ID="skipbtn" CssClass="btn btn-warning pull-right click-on" Text=">> Skip to Next" style="font-weight:bold;" OnClick="skipbtn_Click" /><br />
            </div><br />
        </div>
        <div class="col-lg-1">

            <asp:Label runat="server" ID="label2" CssClass="hide-label" Text=""></asp:Label>
            <asp:Label runat="server" ID="label3" CssClass="hide-label" Text="चुनें"></asp:Label>
            <asp:Label runat="server" ID="label4" CssClass="hide-label" Text=""></asp:Label>
            <asp:Label runat="server" ID="label5" CssClass="hide-label" Text=""></asp:Label>
            <asp:Label runat="server" ID="label6" CssClass="hide-label" Text=""></asp:Label>
            <asp:Label runat="server" ID="label7" CssClass="hide-label" Text="चुनें"></asp:Label>
            <asp:Label runat="server" ID="label8" CssClass="hide-label" Text="चुनें"></asp:Label>
            <asp:Label runat="server" ID="label9" CssClass="hide-label" Text="चुनें"></asp:Label>
            <asp:Label runat="server" ID="label10" CssClass="hide-label" Text="चुनें"></asp:Label>
            <asp:Label runat="server" ID="label11" CssClass="hide-label" Text=""></asp:Label>
            <asp:Label runat="server" ID="label12a" CssClass="hide-label" Text="चुनें"></asp:Label>
            <asp:Label runat="server" ID="label12b" CssClass="hide-label" Text=""></asp:Label>
            <asp:Label runat="server" ID="label13" CssClass="hide-label" Text="चुनें"></asp:Label>
            <asp:Label runat="server" ID="label14" CssClass="hide-label" Text=""></asp:Label>
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
        $("#txt14").attr("disabled", true);
        $("#txt12b").attr("disabled", true);
        $("#txt13").attr("disabled", true);
        $("#txt8").attr("disabled", true);
        $("#txt9").attr("disabled", true);
        $("#txt10").attr("disabled", true);
        $("#txt11").attr("disabled", true);
        $("#onebtn").hide();
        $("#nbtn").val("Please Agree before Submit");
        $("#txt7").bind("change", function () {
            var t8 = document.getElementById("txt8");
            var t9 = document.getElementById("txt9");
            var t10 = document.getElementById("txt10");
            var t11 = document.getElementById("txt11");
            if ($("#txt7").val() == "सरकारी स्कूल" || $("#txt7").val() == "निजी स्कूल") {
                $("#txt8").attr("disabled", false);
                $("#txt9").attr("disabled", false);
                $("#txt10").attr("disabled", false);
                $("#txt11").attr("disabled", false);
            }
            else {
                t8.selectedIndex = 0;
                t9.selectedIndex = 0;
                t10.selectedIndex = 0;
                t11.value = "";
                $("#txt8").attr("disabled", true);
                $("#txt9").attr("disabled", true);
                $("#txt10").attr("disabled", true);
                $("#txt11").attr("disabled", true);
            }
        });
        $("#txt12a").bind("change", function () {
            var t12b = document.getElementById("txt12b");
            var t13 = document.getElementById("txt13");
            var t14 = document.getElementById("txt14");
            if ($("#txt12a").val() == "नहीं") {
                $("#txt12b").attr("disabled", false);
                $("#txt13").attr("disabled", false);
            }
            else {
                t12b.value = "";
                t13.selectedIndex = 0;
                t14.value = "";
                $("#txt12b").attr("disabled", true);
                $("#txt13").attr("disabled", true);
                $("#txt14").attr("disabled", true);
            }
        });
        $("#txt13").bind("change", function () {
            var t14 = document.getElementById("txt14");
            if ($("#txt13").val() == "हाँ") {
                $("#txt14").attr("disabled", false);
            }
            else {
                t14.value = "";
                $("#txt14").attr("disabled", true);
            }
        });
        $("#txt14").blur(function () {
            var t14 = document.getElementById("txt14");
            if (t14.value > 12 || t14.value < 0) {
                alert("Enter correct value in 14 - यदि हाँ तो किस कक्षा से पढ़ना छोड़ा.");
                t14.value = "";
                t14.focus();
            }
        });
        $("#txt4").blur(function () {
            var t4 = document.getElementById("txt4");
            var t5 = document.getElementById("txt5");
            var t6 = document.getElementById("txt6");
            if (t4.value >= 0 && t4.value <= 14) {
                if (t4.value <= 4) {
                    t5.value = "";
                    t6.value = "";
                    $("#txt5").attr("disabled", true);
                    $("#txt6").attr("disabled", true);
                }
                else {
                    $("#txt5").attr("disabled", false);
                    $("#txt6").attr("disabled", false);
                }
            }
            else if (t4.value <= 2018 && t4.value >= 2004) {
                if (t4.value >= 2014) {
                    t5.value = "";
                    t6.value = "";
                    $("#txt5").attr("disabled", true);
                    $("#txt6").attr("disabled", true);
                }
                else {
                    $("#txt5").attr("disabled", false);
                    $("#txt6").attr("disabled", false);
                }
            }
            else {
                alert("Enter correct value in 4 - जन्म तिथि वर्ष अथवा 1-1-2017 को लगभग आयु ( वर्ष में ).");
                t4.value = "";
                t4.focus();
            }
        });
        $("#txt5").blur(function () {
            var t5 = document.getElementById("txt5");
            if (t5.value > 12 || t5.value < 0) {
                alert("Enter correct value in 5 - कक्षा जिसमें अध्ययनरत है.");
                t5.value = "";
                t5.focus();
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
            var t11 = document.getElementById("txt11");
            var t12a = document.getElementById("txt12a");
            var t12b = document.getElementById("txt12b");
            var t13 = document.getElementById("txt13");
            var t14 = document.getElementById("txt14");
            if (ch.checked == true) {
                if (t2.value == "") {
                    alert("Please Enter 2 - बालक / बालिका का नाम first.");
                    ch.checked = false;
                    t2.focus();
                }
                else if ($("#txt3").val() == "चुनें") {
                    alert("Please Choose 3 - पुरूष / महिला first.");
                    ch.checked = false;
                    t3.focus();
                }
                else if (t4.value == "") {
                    alert("Please Enter 4 - जन्म तिथि वर्ष अथवा 1-1-2017 को लगभग आयु first.");
                    ch.checked = false;
                    t4.focus();
                }
                else if (t5.value == "") {
                    alert("Please Enter 5 - कक्षा जिसमें अध्ययनरत है first.");
                    ch.checked = false;
                    t5.focus();
                }
                else if (t6.value == "") {
                    alert("Please Enter 6 - विद्यालय का नाम जिसमें पढ़ रहा है first.");
                    ch.checked = false;
                    t6.focus();
                }
                else if ($("#txt7").val() == "चुनें") {
                    alert("Please Enter 7 - विद्यालय की श्रेणी first.");
                    ch.checked = false;
                    t7.focus();
                }
                else if ($("#txt12a").val() == "चुनें") {
                    alert("Please Enter 12 - क्या पढने जाता है? ( हाँ / नहीं ) first.");
                    ch.checked = false;
                    t12a.focus();
                }
                else {
                    if ($("#txt7").val() != "बालक कभी स्कूल नहीं गया" && $("#txt8").val() == "चुनें") {
                        alert("Please Choose 8 - निःशुल्क शिक्षा ( हाँ / नहीं ) first.");
                        ch.checked = false;
                        t8.focus();
                    }
                    else if ($("#txt7").val() != "बालक कभी स्कूल नहीं गया" && $("#txt9").val() == "चुनें") {
                        alert("Please Choose 9 - पाठ्य पुस्तक लेखन सामग्री ( हाँ / नहीं ) first.");
                        ch.checked = false;
                        t9.focus();
                    }
                    else if ($("#txt7").val() != "बालक कभी स्कूल नहीं गया" && $("#txt11").val() == "चुनें") {
                        alert("Please Choose 10 - मध्यान्ह भोजन ( हाँ / नहीं ) first.");
                        ch.checked = false;
                        t10.focus();
                    }
                    else if ($("#txt7").val() != "बालक कभी स्कूल नहीं गया" && t11.value == "") {
                        alert("Please Enter 11 - छात्रवृत्ति प्रतिमाह ( रूपये में ) first.");
                        ch.checked = false;
                        t11.focus();
                    }
                    else if ($("#txt13").val() == "हाँ" && t14.value == "") {
                        alert("Please Enter 14 - यदि हाँ तो किस कक्षा से पढ़ना छोड़ा first.");
                        ch.checked = false;
                        t14.focus();
                    }
                    else if ($("#txt12a").val() == "नहीं" && t12b.value == "") {
                        alert("Please Enter 12/ - यदि पढ़ने नहीं जाता तो क्या करता है first.");
                        ch.checked = false;
                        t12b.focus();
                    }
                    else if ($("#txt12a").val() == "नहीं" && $("#txt13").val() == "चुनें") {
                        alert("Please Enter 13 - क्या कभी पूर्व में पढने गया है ( हाँ / नहीं ) first.");
                        ch.checked = false;
                        t13.focus();
                    }
                    
                    else {
                        $("#nbtn").attr("disabled", false);
                        $("#onebtn").show();
                        $("#nbtn").val("Submit & Next");
                    }
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
            var t11 = document.getElementById("txt11");
            var t12a = document.getElementById("txt12a");
            var t12b = document.getElementById("txt12b");
            var t13 = document.getElementById("txt13");
            var t14 = document.getElementById("txt14");
            t2.value = $("#label2").text();
            t3.value = $("#label3").text();
            t4.value = $("#label4").text();
            t5.value = $("#label5").text();
            t6.value = $("#label6").text();
            t7.value = $("#label7").text();
            t8.value = $("#label8").text();
            t9.value = $("#label9").text();
            t10.value = $("#label10").text();
            t11.value = $("#label11").text();
            t12a.value = $("#label12a").text();
            if ($("#txt7").val() == "सरकारी स्कूल" || $("#txt7").val() == "निजी स्कूल") {
                $("#txt8").attr("disabled", false);
                $("#txt9").attr("disabled", false);
                $("#txt10").attr("disabled", false);
                $("#txt11").attr("disabled", false);
            }
            if (t12a.value == "नहीं") {
                $("#txt12b").attr("disabled", false);
                $("#txt13").attr("disabled", false);
            }
            t12b.value = $("#label12b").text();
            t13.value = $("#label13").text();
            if (t13.value == "हाँ") {
                $("#txt14").attr("disabled", false);
            }
            t14.value = $("#label14").text();
        });
    </script>
</body>
</html>
