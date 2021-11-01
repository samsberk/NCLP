<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ShowData.aspx.cs" Inherits="Admin_Zone_ShowData" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>NCLP Show Data</title>
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
        .picbox{
            height:200px;
            width:150px;
        }
        td,th{
            padding:2px 5px;
            font-size:14px;
            font-family:muli;
            user-select:none;
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
        <div class="container-fluid">
            <div class="login-panel">
                <h4>पता (Form-1)</h4><hr />
                <table border="1" style="width:100%;">
                    <tr><th style="font-size:18px;">Field</th><th style="font-size:18px;">Data</th></tr>
                    <tr><td>प्रपत्र संख्या</td><td><asp:Label runat="server" ID="f1l1"></asp:Label></td></tr>
                    <tr><td>परिवार कोड</td><td><asp:Label runat="server" ID="f1l2"></asp:Label></td></tr>
                    <tr><td>जनपद का नाम</td><td><asp:Label runat="server" ID="f1l3"></asp:Label></td></tr>
                    <tr><td>तहसील का नाम</td><td><asp:Label runat="server" ID="f1l4"></asp:Label></td></tr>
                    <tr><td>शहर का नाम</td><td><asp:Label runat="server" ID="f1l5"></asp:Label></td></tr>
                    <tr><td>मोहल्ला / गाँव का नाम</td><td><asp:Label runat="server" ID="f1l6"></asp:Label></td></tr>
                    <tr><td>वार्ड संख्या</td><td><asp:Label runat="server" ID="f1l7"></asp:Label></td></tr>
                    <tr><td>मकान संख्या</td><td><asp:Label runat="server" ID="f1l8"></asp:Label></td></tr>
                    <tr><td>सर्वेकर्ता का नाम</td><td><asp:Label runat="server" ID="f1l9"></asp:Label></td></tr>
                    <tr><td>सर्वे दिनांक</td><td><asp:Label runat="server" ID="f1l10"></asp:Label></td></tr>
                    <tr><td>Final Submit</td><td><asp:Label runat="server" ID="f1l11" style="color:red;"></asp:Label></td></tr>
                </table>
            </div>
            
            <div class="login-panel">
                <h4>परिवार के संबन्ध में विवरण (Form-2)</h4><hr />
                <table border="1" style="width:100%;">
                    <tr><th style="font-size:18px;">Field</th><th style="font-size:18px;">Data</th></tr>
                    <tr><td>1 - परिवार के मुखिया का नाम</td><td><asp:Label runat="server" ID="f2l1"></asp:Label></td></tr>
                    <tr><td>2 - पता</td><td><asp:Label runat="server" ID="f2l2"></asp:Label></td></tr>
                    <tr><td>3 - धर्म</td><td><asp:Label runat="server" ID="f2l3"></asp:Label></td></tr>
                    <tr><td>4 - जाति</td><td><asp:Label runat="server" ID="f2l4"></asp:Label></td></tr>
                    <tr><td>5 - व्यवसाय</td><td><asp:Label runat="server" ID="f2l5"></asp:Label></td></tr>
                    <tr><td>6 - पारिवारिक मासिक आय ( रूपये में )</td><td><asp:Label runat="server" ID="f2l6"></asp:Label></td></tr>
                    <tr><td>7 - परिवार के कुल सदस्यों की संख्या : पुरूष</td><td><asp:Label runat="server" ID="f2l7"></asp:Label></td></tr>
                    <tr><td>7 - परिवार के कुल सदस्यों की संख्या : महिला</td><td><asp:Label runat="server" ID="f2l8"></asp:Label></td></tr>
                    <tr><td>8 - परिवार में 14 वर्ष से कम आयु के बच्चों की संख्या : बालक</td><td><asp:Label runat="server" ID="f2l81"></asp:Label></td></tr>
                    <tr><td>8 - परिवार में 14 वर्ष से कम आयु के बच्चों की संख्या : बालक / शिक्षित (संख्या)</td><td><asp:Label runat="server" ID="f2l82"></asp:Label></td></tr>
                    <tr><td>8 - परिवार में 14 वर्ष से कम आयु के बच्चों की संख्या : बालक / काम काजी (संख्या)</td><td><asp:Label runat="server" ID="f2l83"></asp:Label></td></tr>
                    <tr><td>8 - परिवार में 14 वर्ष से कम आयु के बच्चों की संख्या : बालिका</td><td><asp:Label runat="server" ID="f2l801"></asp:Label></td></tr>
                    <tr><td>8 - परिवार में 14 वर्ष से कम आयु के बच्चों की संख्या : बालिका / शिक्षित (संख्या)</td><td><asp:Label runat="server" ID="f2l802"></asp:Label></td></tr>
                    <tr><td>8 - परिवार में 14 वर्ष से कम आयु के बच्चों की संख्या : बालिका / काम काजी (संख्या)</td><td><asp:Label runat="server" ID="f2l803"></asp:Label></td></tr>
                    
					<tr><td>9 - परिवार में 14 वर्ष से ज्यादा आयु के लोगों की संख्या / पुरूष</td><td><asp:Label runat="server" ID="f2l91"></asp:Label></td></tr>
                    <tr><td>8 - परिवार में 14 वर्ष से कम आयु के बच्चों की संख्या : पुरूष / शिक्षित (संख्या)</td><td><asp:Label runat="server" ID="f2l92"></asp:Label></td></tr>
                    <tr><td>8 - परिवार में 14 वर्ष से कम आयु के बच्चों की संख्या : पुरूष / काम काजी (संख्या)</td><td><asp:Label runat="server" ID="f2l93"></asp:Label></td></tr>
                    <tr><td>8 - परिवार में 14 वर्ष से कम आयु के बच्चों की संख्या : महिला</td><td><asp:Label runat="server" ID="f2l901"></asp:Label></td></tr>
                    <tr><td>8 - परिवार में 14 वर्ष से कम आयु के बच्चों की संख्या : महिला / शिक्षित (संख्या)</td><td><asp:Label runat="server" ID="f2l902"></asp:Label></td></tr>
                    <tr><td>8 - परिवार में 14 वर्ष से कम आयु के बच्चों की संख्या : महिला / काम काजी (संख्या)</td><td><asp:Label runat="server" ID="f2l903"></asp:Label></td></tr>
                    
					<tr><td>9 - मकान की स्थिति</td><td><asp:Label runat="server" ID="f2l10"></asp:Label></td></tr>
                    <tr><td>10 - आवास का प्रकार</td><td><asp:Label runat="server" ID="f2l11"></asp:Label></td></tr>
                    <tr><td>सर्वे दिनांक</td><td><asp:Label runat="server" ID="f2l30"></asp:Label></td></tr>
                </table>
            </div>
            <%--<div class="login-panel" style="overflow-x:auto;">
                <h4>14 वर्ष से कम आयु के बालक जो कार्य नहीं कर रहे हैं, का विवरण (Form-3)</h4><hr />
                <table border="1" style="width:250%;">
                    <tr><th>1 - क्रम संख्या</th><th>2 - बालक / बालिका का नाम</th><th>3 - पुरूष / महिला</th><th>4 - जन्म वर्ष अथवा आयु</th><th>5 - कक्षा</th><th>6 - विद्यालय</th><th>7 - विद्यालय की श्रेणी</th><th>8 - निःशुल्क शिक्षा ( हाँ / नहीं )</th><th>9 - पाठ्य पुस्तक लेखन सामग्री ( हाँ / नहीं )</th><th>10 - मध्यान्ह भोजन ( हाँ / नहीं )</th><th>11 - छात्रवृत्ति वार्षिक ( रूपये में )</th><th>12 - क्या पढने जाता है? ( हाँ / नहीं )</th><th>यदि पढ़ने नहीं जाता तो क्या करता है</th><th>13 - क्या कभी पूर्व में पढने गया है ( हाँ / नहीं )</th><th>14 - यदि हाँ तो किस कक्षा से पढ़ना छोड़ा</th></tr>
                    <asp:PlaceHolder runat="server" ID="f3placeholder"></asp:PlaceHolder>
                </table>
            </div>--%>
            <div class="login-panel">
                <h4>14 वर्ष से कम आयु के बालक जो कार्य कर रहे हैं, का विवरण (Form-3)</h4><hr />
                <table border="1" style="width:100%;">
                    
                    <tr><td>बच्चे का फोटो : <div class="picbox"><asp:Image runat="server" ID="pic1" style='max-height:200px;width:100%;'/></div></td><td>बच्चे के साथ सेल्फी : <div class="picbox"><asp:Image runat="server" ID="pic2" style='max-height:200px;width:100%;'/></div></td></tr>
                    <tr><th style="font-size:18px;">Field</th><th style="font-size:18px;">Data</th></tr>
                    <tr><td>1 - क्रम संख्या</td><td><asp:Label runat="server" ID="f4l1"></asp:Label></td></tr>
                    <tr><td>2 - बच्चे का नाम</td><td><asp:Label runat="server" ID="f4l2"></asp:Label></td></tr>
                    <tr><td>3 - बच्चे का घर का नाम</td><td><asp:Label runat="server" ID="f4l3"></asp:Label></td></tr>
                    <tr><td>4 - जन्म वर्ष अथवा 1-1-2017 को लगभग आयु ( वर्ष में ) ( वास्तविक )</td><td><asp:Label runat="server" ID="f4l4"></asp:Label></td></tr>
                    <tr><td>5 - जन्म वर्ष अथवा 1-1-2017 को लगभग आयु ( वर्ष में ) ( दस्तावेज मे )</td><td><asp:Label runat="server" ID="f4l5"></asp:Label></td></tr>
                    <tr><td>6 - आधार कार्ड है? ( हाँ / नहीं )</td><td><asp:Label runat="server" ID="f4l6"></asp:Label></td></tr>
                    <tr><td>यदि हाँ तो आधार क्रमांक ( 12 अंक )</td><td><asp:Label runat="server" ID="f4l7"></asp:Label></td></tr>
                    <tr><td>7 - राशन कार्ड है? ( हाँ / नहीं )</td><td><asp:Label runat="server" ID="f4l8"></asp:Label></td></tr>
                    <tr><td>8 - धर्म</td><td><asp:Label runat="server" ID="f4l9"></asp:Label></td></tr>
                    <tr><td>9 - जाति</td><td><asp:Label runat="server" ID="f4l10"></asp:Label></td></tr>
                    <tr><td>10 - पता ( अस्थाई )</td><td><asp:Label runat="server" ID="f4l11"></asp:Label></td></tr>
                    <tr><td>कोई पहचान चिन्ह</td><td><asp:Label runat="server" ID="f4l12"></asp:Label></td></tr>
                    <tr><td>11 - पता ( स्थाई ) </td><td><asp:Label runat="server" ID="f4l13"></asp:Label></td></tr>
                    <tr><td>कोई पहचान चिन्ह</td><td><asp:Label runat="server" ID="f4l14"></asp:Label></td></tr>
                    <tr><td>13 - कार्य का प्रकार</td><td><asp:Label runat="server" ID="f4l15"></asp:Label></td></tr>
                    <tr><td>14 - व्यवसाय के पद का नाम</td><td><asp:Label runat="server" ID="f4l16"></asp:Label></td></tr>
                    <tr><td>15 - क्या किया जाने वाला कार्य बच्चे के लिए खतरनाक है? ( हाँ / नहीं )</td><td><asp:Label runat="server" ID="f4l17"></asp:Label></td></tr>
                    <tr><td>बच्चे द्वारा किया जाने वाला कार्य</td><td><asp:Label runat="server" ID="f4l17b"></asp:Label></td></tr>
                    <tr><td>16 - कार्य एवं व्यवसाय स्थल का पता</td><td><asp:Label runat="server" ID="f4l18"></asp:Label></td></tr>
                    <tr><td>17 - कार्य के घण्टे ( प्रतिदिन )</td><td><asp:Label runat="server" ID="f4l19"></asp:Label></td></tr>
                    <tr><td>18 - आय ( मासिक रूपये में )</td><td><asp:Label runat="server" ID="f4l20"></asp:Label></td></tr>
                    <tr><td>19 - बच्चे द्वारा किया जाने वाला कार्य</td><td><asp:Label runat="server" ID="f4l21"></asp:Label></td></tr>
                    <tr><td>20 - कब से कार्यरत है ( प्रारम्भ करने की उम्र व समय )</td><td><asp:Label runat="server" ID="f4l22"></asp:Label></td></tr>
                    <tr><td>21 - बालक का नौकरी या व्यवसाय में शामिल होने का मुख्य कारण</td><td><asp:Label runat="server" ID="f4l23"></asp:Label></td></tr>
                    <tr><td>22 - क्या बालक अन्य किसी क्षेत्र या प्रदेश से कार्य हेतु यहाँ आया है? ( हाँ / नहीं )</td><td><asp:Label runat="server" ID="f4l24"></asp:Label></td></tr>
                    <tr><td>23 - यदि हाँ तो किसके साथ</td><td><asp:Label runat="server" ID="f4l25"></asp:Label></td></tr>
                    <tr><td>24 - स्थानान्तरित होने का समय व जन्म स्थान</td><td><asp:Label runat="server" ID="f4l26"></asp:Label></td></tr>
                    <tr><td>25 - स्थानान्तरण का कारण</td><td><asp:Label runat="server" ID="f4l27"></asp:Label></td></tr>
                    <tr><td>26 - शिक्षा</td><td><asp:Label runat="server" ID="f4l28"></asp:Label></td></tr>
                    <tr><td>किस कक्षा से</td><td><asp:Label runat="server" ID="f4l29"></asp:Label></td></tr>
                    <tr><td>27 - यदि शिक्षा में है तो कक्षा, जिसमें अध्ययनरत है</td><td><asp:Label runat="server" ID="f4l30"></asp:Label></td></tr>
                    <tr><td>यदि शिक्षा में है तो स्कूल का नाम व पता</td><td><asp:Label runat="server" ID="f4l30b"></asp:Label></td></tr>
                    <tr><td>28 - स्कूल छोड़ने का कारण</td><td><asp:Label runat="server" ID="f4l31"></asp:Label></td></tr>
                    <tr><td>29 - यदि किसी व्यवसायिक प्रशिक्षण में भागीदारी कि तो प्रशिक्षण का नाम व संस्थान का पता</td><td><asp:Label runat="server" ID="f4l32"></asp:Label></td></tr>
                    <tr><td>30 - यदि किसी प्रशिक्षण / स्कूल की व्यवस्था है तो क्या माता पिता बच्चे को प्रशिक्षण अथवा स्कूल भेजने को तैयार हैं</td><td><asp:Label runat="server" ID="f4l33"></asp:Label></td></tr>
                    <tr><td>यदि हाँ तो कार्य के साथ किस समय भेज सकते हैं ?</td><td><asp:Label runat="server" ID="f4l33b"></asp:Label></td></tr>
                    <tr><td>स्कूल / प्रशिक्षण हेतु बिल्कुल ना भेजने का कारण</td><td><asp:Label runat="server" ID="f4l33c"></asp:Label></td></tr>
                    <tr><td>31 - सर्वेकर्ता द्वारा स्वयं की देखी गई कोई हो तो बतायें</td><td><asp:Label runat="server" ID="f4l34"></asp:Label></td></tr>
                    <tr><td>32 - बच्चे की स्वास्थय जनित समस्या यदि कोई हो तो</td><td><asp:Label runat="server" ID="f4l35"></asp:Label></td></tr>
                    <tr><td>33 - सम्बन्ध</td><td><asp:Label runat="server" ID="f4l36"></asp:Label></td></tr>
                    <tr><td>लिंग</td><td><asp:Label runat="server" ID="f4l37"></asp:Label></td></tr>
                    <tr><td>उम्र ( वर्ष में )</td><td><asp:Label runat="server" ID="f4l38"></asp:Label></td></tr>
                    <tr><td>शिक्षा</td><td><asp:Label runat="server" ID="f4l39"></asp:Label></td></tr>
                    <tr><td>व्यवसाय</td><td><asp:Label runat="server" ID="f4l40"></asp:Label></td></tr>
                    <tr><td>मासिक आय ( रूपये में )</td><td><asp:Label runat="server" ID="f4l41"></asp:Label></td></tr>
                    <tr><td>34 - सम्बन्ध</td><td><asp:Label runat="server" ID="f4l42"></asp:Label></td></tr>
                    <tr><td>लिंग</td><td><asp:Label runat="server" ID="f4l43"></asp:Label></td></tr>
                    <tr><td>उम्र ( वर्ष में )</td><td><asp:Label runat="server" ID="f4l44"></asp:Label></td></tr>
                    <tr><td>शिक्षा</td><td><asp:Label runat="server" ID="f4l45"></asp:Label></td></tr>
                    <tr><td>व्यवसाय</td><td><asp:Label runat="server" ID="f4l46"></asp:Label></td></tr>
                    <tr><td>मासिक आय ( रूपये में )</td><td><asp:Label runat="server" ID="f4l47"></asp:Label></td></tr>
                    <tr><td>35 - सम्बन्ध</td><td><asp:Label runat="server" ID="f4l48"></asp:Label></td></tr>
                    <tr><td>लिंग</td><td><asp:Label runat="server" ID="f4l49"></asp:Label></td></tr>
                    <tr><td>उम्र ( वर्ष में )</td><td><asp:Label runat="server" ID="f4l50"></asp:Label></td></tr>
                    <tr><td>शिक्षा</td><td><asp:Label runat="server" ID="f4l51"></asp:Label></td></tr>
                    <tr><td>व्यवसाय</td><td><asp:Label runat="server" ID="f4l52"></asp:Label></td></tr>
                    <tr><td>मासिक आय ( रूपये में )</td><td><asp:Label runat="server" ID="f4l53"></asp:Label></td></tr>
                    <tr><td>36 - बच्चे के सम्बन्ध में अन्य कोई जानकारी</td><td><asp:Label runat="server" ID="f4l54"></asp:Label></td></tr>
                    <tr><td>37 - माता-पिता की वैवाहिक स्थिति</td><td><asp:Label runat="server" ID="f4l55"></asp:Label></td></tr>
                    <tr><td>सर्वे दिनांक</td><td><asp:Label runat="server" ID="f4l56"></asp:Label></td></tr>
                </table>
            </div>

            <%--<div class="login-panel" style="overflow-x:auto;">
                <h4>परिवार के 14 वर्ष पूर्ण कर चुके और उससे अधिक आयु के सदस्यों का विवरण (Form-5)</h4><hr />
                <table border="1" style="width:150%;">
                    <tr><th>1 - क्रम संख्या</th><th>2 - नाम</th><th>3 - लिंग</th><th>4 - परिवार के मुखिया से सम्बन्ध</th><th>5 - आयु 1-1-2017 को लगभग ( वर्ष में )</th><th>6 - शैक्षिक स्तर</th><th>7 - पेशा / व्यवसाय / कार्य</th><th>8 - यदि नौकरी / मजदूरी / स्वयं का व्यवसाय है तो मासिक आय ( रूपये में )</th><th>9 - क्या प्रथम दृष्टया कोई स्वास्थ्य जनित समस्या है? ( हाँ / नहीं )</th><th>10 - यदि हाँ, तो क्या</th></tr>
                    <asp:PlaceHolder runat="server" ID="f5placeholder"></asp:PlaceHolder>
                </table>
            </div>--%><br />
            <a href="javascript:void()" id="closeshow" class="btn btn-success pull-left click-on">OK</a>
            <asp:Button runat="server" ID="updatebtn" CssClass="btn btn-warning click-on pull-right" Text="UPDATE" OnClick="updatebtn_Click"/>
        </div><br />
    </form>
    <script>
        $(".click-on").click(function () {
            $(".after-click").fadeIn();
        });
        var loader = document.getElementById("loader");
        window.addEventListener("load", function () {
            $("#loader").fadeOut("slow");
        });
        $("#closeshow").click(function () {
			window.location = "Admin_Home";
        });
    </script>
</body>
</html>
