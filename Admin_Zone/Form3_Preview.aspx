<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Form3_Preview.aspx.cs" Inherits="Admin_Zone_Form3_Preview" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>NCLP Survey Form 3 Preview</title>
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
        <h2 style="text-align:center;font-weight:bold;font-family:muli;">Form 3 Preview</h2><hr />
        
        <div class="col-lg-1"></div>
        <div class="col-lg-10">
            <div class="login-panel">
                <h3 style="text-align:center;font-family:karma;font-weight:bold;">14 वर्ष से कम आयु के बालक जो कार्य नहीं कर रहे हैं, का विवरण</h3><hr />
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
            </div><span style="color:red;font-family:karma;">* नोट : यह फार्म केवल ढ़ाँचा प्रदर्शित करने के लिए है।</span><br /><br />
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
