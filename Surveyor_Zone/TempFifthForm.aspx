<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TempFifthForm.aspx.cs" Inherits="Surveyor_Zone_TempFifthForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>NCLP Form 5 of 6</title>
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
        <div class="col-lg-1"></div>
        <div class="col-lg-10">
            <div class="login-panel">
                <h4 style="text-align:center;font-family:karma;font-weight:bold;line-height:150%;">परिवार में 14 वर्ष से कम आयु के बालक / बालिका जो पढ़ने नहीं जाते है अथवा घर में चल रही व्यवसायिक प्रक्रिया अथवा घरेलू उद्योग में कार्य / सहायता करते हैं अथवा पढ़ने के साथ कहीं मजदूरी भी करते हैं, का विवरण</h4><hr />
                <label style="color:red;">महत्वपूर्ण : आप आंकड़ो की पूर्ति अपने सुविधानुसार हिन्दी / English में कर सकते हैं।</label>
                <div class="input-group">
                    <span class="input-group-addon">1 - क्रम संख्या</span>
                    <div class="form-control txt"><asp:Label runat="server" ID="txt1"></asp:Label></div>
                </div>
                <div class="input-group">
                    <span class="input-group-addon">2 - बालक / बलिका का नाम</span>
                    <asp:TextBox runat="server" ID="txt2" MaxLength="100" Placeholder="बालक / बलिका का नाम" CssClass="form-control txt" style="text-transform:uppercase;"></asp:TextBox>
                </div>
                <div class="input-group">
                    <span class="input-group-addon">3 - कार्यास्थल का प्रकार</span>
                    <asp:DropDownList runat="server" ID="txt3" CssClass="form-control txt">
                        <asp:ListItem>चुनें</asp:ListItem>
                        <asp:ListItem>स्वयं का व्यवसाय</asp:ListItem>
                        <asp:ListItem>घरेलु व्यवसाय</asp:ListItem>
                        <asp:ListItem>स्थाई दुकान</asp:ListItem>
                        <asp:ListItem>औद्यौगिक प्रतिष्ठान</asp:ListItem>
                        <asp:ListItem>दुकान</asp:ListItem>
                        <asp:ListItem>घरेलु औद्यौगिक ईकाई</asp:ListItem>
                        <asp:ListItem>कृषि कार्य</asp:ListItem>
                        <asp:ListItem>घरेलु कार्य</asp:ListItem>
                        <asp:ListItem>अन्य कोई</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="input-group">
                    <span class="input-group-addon">4 - प्रतिष्ठान का नाम व पता</span>
                    <asp:TextBox runat="server" ID="txt4" TextMode="MultiLine" Rows="2" Placeholder="प्रतिष्ठान का नाम व पता" CssClass="form-control txt" style="text-transform:uppercase;resize:none;"></asp:TextBox>
                </div>
                <div class="input-group">
                    <span class="input-group-addon">5 - प्रक्रिया या कार्य जो बच्चे द्वारा किया जाता है, का सूची में क्रमांक</span>
                    <asp:TextBox runat="server" ID="txt5" TextMode="Number" Placeholder="प्रक्रिया या कार्य जो बच्चे द्वारा किया जाता है, का सूची में क्रमांक" CssClass="form-control txt" style="text-transform:uppercase;"></asp:TextBox>
                </div>
                <div class="input-group">
                    <span class="input-group-addon">6 - नियोजक का नाम व पता</span>
                    <asp:TextBox runat="server" ID="txt6" TextMode="MultiLine" Rows="2" Placeholder="नियोजक का नाम व पता" CssClass="form-control txt" style="text-transform:uppercase;resize:none;"></asp:TextBox>
                </div>
                <div class="input-group">
                    <span class="input-group-addon">7 - कब से कार्यरत है ( माह / वर्ष )</span>
                    <asp:TextBox runat="server" ID="txt7" MaxLength="15" Placeholder="कब से कार्यरत है ( माह / वर्ष )" CssClass="form-control txt" style="text-transform:uppercase;"></asp:TextBox>
                </div>
                <div class="input-group">
                    <span class="input-group-addon">8 - आय प्रतिदिन ( रूपयों में )</span>
                    <asp:TextBox runat="server" ID="txt8" TextMode="Number" Placeholder="आय प्रतिदिन ( रूपयों में )" CssClass="form-control txt" style="text-transform:uppercase;"></asp:TextBox>
                </div>
                <div class="input-group">
                    <span class="input-group-addon">9 - कितने घण्टे कार्य करता है ( घण्टे )</span>
                    <asp:TextBox runat="server" ID="txt9" TextMode="Number" Placeholder="घण्टे" CssClass="form-control txt" style="text-transform:uppercase;"></asp:TextBox>
                </div>
                <div class="input-group">
                    <span class="input-group-addon">10 - क्या परिवार इस बच्चे को कार्य के स्थान पर स्कूल भेजने को तैयार है? ( हाँ / नहीं )</span>
                    <asp:DropDownList runat="server" ID="txt10" CssClass="form-control txt">
                        <asp:ListItem>चुनें</asp:ListItem>
                        <asp:ListItem>हाँ</asp:ListItem>
                        <asp:ListItem>नहीं</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="input-group">
                    <span class="input-group-addon">11 - यदि नहीं तो कार्य के साथ बच्चे को किस समय विद्यालय भेजने को तैयार है?</span>
                    <asp:DropDownList runat="server" ID="txt11" CssClass="form-control txt">
                        <asp:ListItem>चुनें</asp:ListItem>
                        <asp:ListItem>प्रातः</asp:ListItem>
                        <asp:ListItem>दोपहर</asp:ListItem>
                        <asp:ListItem>सायं</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="row">
                    <div class="col-md-7">
                        <div class="input-group">
                            <span class="input-group-addon">12 - क्या बच्चे की प्रथम दृष्टया क्या कोई स्वास्थ्य जनित समस्या है? ( हाँ / नहीं )</span>
                            <asp:DropDownList runat="server" ID="txt12" CssClass="form-control txt">
                                <asp:ListItem>चुनें</asp:ListItem>
                                <asp:ListItem>हाँ</asp:ListItem>
                                <asp:ListItem>नहीं</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>
                    <div class="col-md-5">
                        <div class="input-group">
                            <span class="input-group-addon">13 - यदि हाँ, तो क्या</span>
                            <asp:TextBox runat="server" ID="txt13" MaxLength="100" Placeholder="बच्चे की स्वास्थ्य जनित समस्या" CssClass="form-control txt" style="text-transform:uppercase;"></asp:TextBox>
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
            </div>
        </div>
        <div class="col-lg-1">
            <asp:Label runat="server" ID="label2" CssClass="hide-label" Text=""></asp:Label>
            <asp:Label runat="server" ID="label3" CssClass="hide-label" Text="चुनें"></asp:Label>
            <asp:Label runat="server" ID="label4" CssClass="hide-label" Text=""></asp:Label>
            <asp:Label runat="server" ID="label5" CssClass="hide-label" Text=""></asp:Label>
            <asp:Label runat="server" ID="label6" CssClass="hide-label" Text=""></asp:Label>
            <asp:Label runat="server" ID="label7" CssClass="hide-label" Text=""></asp:Label>
            <asp:Label runat="server" ID="label8" CssClass="hide-label" Text=""></asp:Label>
            <asp:Label runat="server" ID="label9" CssClass="hide-label" Text=""></asp:Label>
            <asp:Label runat="server" ID="label10" CssClass="hide-label" Text="चुनें"></asp:Label>
            <asp:Label runat="server" ID="label11" CssClass="hide-label" Text="चुनें"></asp:Label>
            <asp:Label runat="server" ID="label12" CssClass="hide-label" Text="चुनें"></asp:Label>
            <asp:Label runat="server" ID="label13" CssClass="hide-label" Text=""></asp:Label>
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
        $("#txt11").attr("disabled", true);
        $("#txt13").attr("disabled", true);
        $("#onebtn").hide();
        $("#nbtn").val("Please Agree before Submit");
        $("#txt5").blur(function () {
            var t5 = document.getElementById("txt5");
            if (t5.value < 0) {
                alert("Enter correct value in 5 - प्रक्रिया या कार्य जो बच्चे द्वारा किया जाता है, का सूची में क्रमांक.");
                t5.value = "";
                t5.focus();
            }
        });
        $("#txt8").blur(function () {
            var t8 = document.getElementById("txt8");
            if (t8.value < 0) {
                alert("Enter correct value in 8 - आय प्रतिदिन ( रूपयों में ).");
                t8.value = "";
                t8.focus();
            }
        });
        $("#txt9").blur(function () {
            var t9 = document.getElementById("txt9");
            if (t9.value < 0 || t9.value > 24) {
                alert("Enter correct value in 9 - कितने घण्टे कार्य करता है ( घण्टे ).");
                t9.value = "";
                t9.focus();
            }
        });
        $("#txt10").bind("change", function () {
            var t10 = document.getElementById("txt10");
            var t11 = document.getElementById("txt11");
            if ($("#txt10").val() == "नहीं") {
                $("#txt11").attr("disabled", false);
            }
            else {
                t11.selectedIndex = 0;
                $("#txt11").attr("disabled", true);
            }
        });
        $("#txt12").bind("change", function () {
            var t12 = document.getElementById("txt12");
            var t13 = document.getElementById("txt13");
            if ($("#txt12").val() == "हाँ") {
                $("#txt13").attr("disabled", false);
            }
            else {
                t13.value = "";
                $("#txt13").attr("disabled", true);
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
            var t12 = document.getElementById("txt12");
            var t13 = document.getElementById("txt13");
            if (ch.checked == true) {
                if (t2.value == "") {
                    alert("Please Enter 2 - बालक / बलिका का नाम first.");
                    ch.checked = false;
                    t2.focus();
                }
                else if ($("#txt3").val() == "चुनें") {
                    alert("Please Choose 3 - कार्यास्थल का प्रकार first.");
                    ch.checked = false;
                    t3.focus();
                }
                else if (t4.value == "") {
                    alert("Please Enter 4 - प्रतिष्ठान का नाम व पता first.");
                    ch.checked = false;
                    t4.focus();
                }
                else if (t5.value == "") {
                    alert("Please Enter 5 - प्रक्रिया या कार्य जो बच्चे द्वारा किया जाता है, का सूची में क्रमांक first.");
                    ch.checked = false;
                    t5.focus();
                }
                else if (t6.value == "") {
                    alert("Please Enter 6 - नियोजक का नाम व पता first.");
                    ch.checked = false;
                    t6.focus();
                }
                else if (t7.value == "") {
                    alert("Please Enter 7 - कब से कार्यरत है ( माह / वर्ष ) first.");
                    ch.checked = false;
                    t7.focus();
                }
                else if (t8.value == "") {
                    alert("Please Enter 8 - आय प्रतिदिन ( रूपयों में ) first.");
                    ch.checked = false;
                    t8.focus();
                }
                else if (t9.value == "") {
                    alert("Please Enter 9 - कितने घण्टे कार्य करता है ( घण्टे ) first.");
                    ch.checked = false;
                    t9.focus();
                }
                else if ($("#txt10").val() == "चुनें") {
                    alert("Please Choose 10 - क्या परिवार इस बच्चे को कार्य के स्थान पर स्कूल भेजने को तैयार है? ( हाँ / नहीं ) first.");
                    ch.checked = false;
                    t10.focus();
                }
                else if ($("#txt12").val() == "चुनें") {
                    alert("Please Choose 12 - क्या बच्चे की प्रथम दृष्टया क्या कोई स्वास्थ्य जनित समस्या है? ( हाँ / नहीं ) first.");
                    ch.checked = false;
                    t12.focus();
                }
                
                else {
                    if ($("#txt10").val() == "नहीं" && $("#txt11").val() == "चुनें") {
                        alert("Please Choose 11 - यदि नहीं तो कार्य के साथ बच्चे को किस समय विद्यालय भेजने को तैयार है? first.");
                        ch.checked = false;
                        t11.focus();
                    }
                    else if ($("#txt12").val() == "हाँ" && t13.value=="") {
                        alert("Please Choose 13 - यदि हाँ, तो क्या first.");
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
            var t12 = document.getElementById("txt12");
            var t13 = document.getElementById("txt13");
            t2.value = $("#label2").text();
            t3.value = $("#label3").text();
            t4.value = $("#label4").text();
            t5.value = $("#label5").text();
            t6.value = $("#label6").text();
            t7.value = $("#label7").text();
            t8.value = $("#label8").text();
            t9.value = $("#label9").text();
            t10.value = $("#label10").text();
            if (t10.value == "नहीं") {
                $("#txt11").attr("disabled", false);
            }
            t11.value = $("#label11").text();
            t12.value = $("#label12").text();
            if (t12.value == "हाँ") {
                $("#txt13").attr("disabled", false);
            }
            t13.value = $("#label13").text();
        });
    </script>
</body>
</html>
