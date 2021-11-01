<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Form4_Preview.aspx.cs" Inherits="Admin_Zone_Form4_Preview" %>

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
        #picbox, #picbox2 {
            height: 200px;
            width: 150px;
            background: white;
            border: 1px solid lightgray;
            border-radius: 5px;
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
        <h2 style="text-align:center;font-weight:bold;font-family:muli;">Form 3 Preview</h2><hr />

        <div class="col-lg-1"></div>
        <div class="col-lg-10">
            <div class="login-panel">
                <h3 style="text-align:center;font-family:karma;font-weight:bold;">14 वर्ष से कम आयु के बालक जो कार्य कर रहे हैं, का विवरण</h3><hr />
                <label style="color:red;">महत्वपूर्ण : आप आंकड़ो की पूर्ति अपने सुविधानुसार हिन्दी / English में कर सकते हैं।</label>
                <div class="row">
                    <div class="col-md-9">
                        <label style="font-size:16px;">(अ) बच्चे का व्यक्तिगत विवरण ( कालम-1 से कालम-12 ) :</label>
                        <div class="input-group">
                            <span class="input-group-addon">1 - क्रम संख्या</span>
                            <div class="form-control"><asp:Label runat="server" ID="txt1"></asp:Label></div>
                        </div>
                        <div class="input-group">
                            <span class="input-group-addon">2 - बच्चे का नाम</span>
                            <asp:TextBox runat="server" ID="txt2" MaxLength="100" Placeholder="बच्चे का नाम" CssClass="form-control txt" style="text-transform:uppercase;"></asp:TextBox>
                        </div>

                        <div class="input-group">
                            <span class="input-group-addon">3 - बच्चे का घर का नाम</span>
                            <asp:TextBox runat="server" ID="txt3" MaxLength="100" Placeholder="बच्चे का घर का नाम" CssClass="form-control txt" style="text-transform:uppercase;"></asp:TextBox>
                        </div>

                        <div class="input-group">
                            <span class="input-group-addon">4 - जन्म वर्ष अथवा 1-1-2017 को लगभग आयु ( वर्ष में ) ( वास्तविक )</span>
                            <asp:TextBox runat="server" ID="txt4" TextMode="Number" placeholder="जन्म वर्ष अथवा 1-1-2017 को लगभग आयु ( वर्ष में )" CssClass="form-control txt" style="text-transform:uppercase;"></asp:TextBox>
                        </div>

                        <div class="input-group">
                            <span class="input-group-addon">5 - जन्म वर्ष अथवा 1-1-2017 को लगभग आयु ( वर्ष में ) ( दस्तावेज मे )</span>
                            <asp:TextBox runat="server" ID="txt5" TextMode="Number" placeholder="जन्म वर्ष अथवा 1-1-2017 को लगभग आयु ( वर्ष में )" CssClass="form-control txt" style="text-transform:uppercase;"></asp:TextBox>
                        </div>

                        <div class="input-group">
                            <span class="input-group-addon">6 - आधार कार्ड है? ( हाँ / नहीं )</span>
                            <asp:DropDownList runat="server" ID="txt6a" CssClass="form-control txt">
                                <asp:ListItem>चुनें</asp:ListItem>
                                <asp:ListItem>हाँ</asp:ListItem>
                                <asp:ListItem>नहीं</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <div class="input-group">
                            <span class="input-group-addon">यदि हाँ तो आधार क्रमांक ( 12 अंक )</span>
                            <asp:TextBox runat="server" ID="txt6b" TextMode="Number" placeholder="आधार क्रमांक" CssClass="form-control txt" style="text-transform:uppercase;"></asp:TextBox>
                        </div>

                        <div class="input-group">
                            <span class="input-group-addon">7 - राशन कार्ड है? ( हाँ / नहीं )</span>
                            <asp:DropDownList runat="server" ID="txt7" CssClass="form-control txt">
                                <asp:ListItem>चुनें</asp:ListItem>
                                <asp:ListItem>हाँ</asp:ListItem>
                                <asp:ListItem>नहीं</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <div class="input-group">
                            <span class="input-group-addon">8 - धर्म</span>
                            <asp:DropDownList runat="server" ID="txt8" CssClass="form-control txt">
                                <asp:ListItem>चुनें</asp:ListItem>
                                <asp:ListItem>हिन्दु</asp:ListItem>
                                <asp:ListItem>मुस्लिम</asp:ListItem>
                                <asp:ListItem>सिक्ख</asp:ListItem>
                                <asp:ListItem>ईसाई</asp:ListItem>
                                <asp:ListItem>बौद्ध</asp:ListItem>
                                <asp:ListItem>जैन</asp:ListItem>
                                <asp:ListItem>अन्य कोई</asp:ListItem>
                            </asp:DropDownList>
                        </div>

                        <div class="input-group">
                            <span class="input-group-addon">9 - जाति</span>
                            <asp:DropDownList runat="server" ID="txt9" CssClass="form-control txt">
                                <asp:ListItem>चुनें</asp:ListItem>
                                <asp:ListItem>अनुसूचित जाति</asp:ListItem>
                                <asp:ListItem>अनुसूचित जनजाति</asp:ListItem>
                                <asp:ListItem>अन्य पिछड़ा वर्ग</asp:ListItem>
                                <asp:ListItem>सामान्य</asp:ListItem>
                                <asp:ListItem>अल्पसंख्यक</asp:ListItem>
                            </asp:DropDownList>
                        </div>

                        <div class="input-group" style="margin-bottom:1px;">
                            <span class="input-group-addon">10 - पता ( अस्थाई )</span>
                            <asp:TextBox runat="server" ID="txt10a" Placeholder="अस्थाई पता" TextMode="MultiLine" Rows="2" CssClass="form-control txt" style="text-transform:uppercase;resize:none;"></asp:TextBox>
                        </div>
                        <div class="input-group">
                            <span class="input-group-addon">कोई पहचान चिन्ह</span>
                            <asp:TextBox runat="server" ID="txt10b" Placeholder="पते का कोई पहचान चिन्ह" MaxLength="100" CssClass="form-control txt" style="text-transform:uppercase;"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <label for="picbox">12 - बच्चे का फोटो (150*200) :</label>
                        <div id="picbox">
                            <asp:Image runat="server" ID="picpreview" />
                        </div>
                        <asp:FileUpload runat="server" ID="pic" CssClass="form-control txt"/>
                        <label for="picbox2">बच्चे के साथ सेल्फी (150*200) :</label>
                        <div id="picbox2">
                            <asp:Image runat="server" ID="picpreview2" />
                        </div>
                        <asp:FileUpload runat="server" ID="pic2" CssClass="form-control txt"/>
                    </div>
                </div>
                

                <div class="input-group" style="margin-bottom:1px;">
                    <span class="input-group-addon">11 - पता ( स्थाई ) &emsp;<asp:CheckBox runat="server" ID="smaddress" Text="&ensp;Same as" style="user-select:none;"/></span>
                    <asp:TextBox runat="server" ID="txt11a" Placeholder="स्थाई पता" TextMode="MultiLine" Rows="2" CssClass="form-control txt" style="text-transform:uppercase;resize:none;"></asp:TextBox>
                </div>
                <div class="input-group">
                    <span class="input-group-addon">कोई पहचान चिन्ह</span>
                    <asp:TextBox runat="server" ID="txt11b" Placeholder="पते का कोई पहचान चिन्ह" MaxLength="100" CssClass="form-control txt" style="text-transform:uppercase;"></asp:TextBox>
                </div><br />

                <label style="font-size:16px;">(ब) बच्चे का व्यवसाय / नौकरी का विवरण ( कालम-13 से कालम-25 ) :</label>
                <div class="input-group">
                    <span class="input-group-addon">13 - कार्य का प्रकार</span>
                    <asp:DropDownList runat="server" ID="txt13" CssClass="form-control txt">
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
                    <span class="input-group-addon">14 - व्यवसाय के पद का नाम</span>
                    <asp:TextBox runat="server" ID="txt14" Placeholder="पद का नाम" MaxLength="100" CssClass="form-control txt" style="text-transform:uppercase;"></asp:TextBox>
                </div>

                <div class="input-group">
                    <span class="input-group-addon">15 - क्या किया जाने वाला कार्य बच्चे के लिए खतरनाक है? ( हाँ / नहीं )</span>
                    <asp:DropDownList runat="server" ID="txt15a" CssClass="form-control txt">
                        <asp:ListItem>चुनें</asp:ListItem>
                        <asp:ListItem>हाँ</asp:ListItem>
                        <asp:ListItem>नहीं</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="input-group">
                    <span class="input-group-addon">बच्चे द्वारा किया जाने वाला कार्य</span>
                    <asp:DropDownList runat="server" ID="txt15b" CssClass="form-control txt">
                        <asp:ListItem>चुनें</asp:ListItem>
                        <asp:ListItem>रेलवे सामान लाना ले जाना</asp:ListItem>
                        <asp:ListItem>रेलवे ट्रैक / रोड पर कार्य</asp:ListItem>
                        <asp:ListItem>बूचड़ खाने पर कार्य</asp:ListItem>
                        <asp:ListItem>भट्टी पर कार्य</asp:ListItem>
                        <asp:ListItem>बंधुआ मजदूर</asp:ListItem>
                        <asp:ListItem>पेस्टिसाइड</asp:ListItem>
                        <asp:ListItem>प्लास्टीक फैक्ट्री</asp:ListItem>
                        <asp:ListItem>घरेलू नौकर</asp:ListItem>
                    </asp:DropDownList>
                </div>

                <div class="input-group">
                    <span class="input-group-addon">16 - कार्य एवं व्यवसाय स्थल का पता</span>
                    <asp:TextBox runat="server" ID="txt16" Placeholder="कार्य एवं व्यवसाय स्थल का पता" TextMode="MultiLine" Rows="2" CssClass="form-control txt" style="text-transform:uppercase;resize:none;"></asp:TextBox>
                </div>

                <div class="row">
                    <div class="col-md-6">
                        <div class="input-group">
                            <span class="input-group-addon">17 - कार्य के घण्टे ( प्रतिदिन )</span>
                            <asp:TextBox runat="server" ID="txt17" Placeholder="कार्य के घण्टे ( प्रतिदिन )"  TextMode="Number" CssClass="form-control txt" style="text-transform:uppercase;resize:none;"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="input-group">
                            <span class="input-group-addon">18 - आय ( मासिक रूपये में ) </span>
                            <asp:TextBox runat="server" ID="txt18" Placeholder="आय ( प्रतिदिन )" TextMode="Number" CssClass="form-control txt" style="text-transform:uppercase;resize:none;"></asp:TextBox>
                        </div>
                    </div>
                </div>

                <div class="input-group">
                    <span class="input-group-addon">19 - बच्चे द्वारा किया जाने वाला कार्य</span>
                    <asp:TextBox runat="server" ID="txt19" Placeholder="बच्चे द्वारा किया जाने वाला कार्य" MaxLength="100" CssClass="form-control txt" style="text-transform:uppercase;"></asp:TextBox>
                </div>

                <div class="input-group">
                    <span class="input-group-addon">20 - कब से कार्यरत है ( प्रारम्भ करने की उम्र व समय )</span>
                    <asp:TextBox runat="server" ID="txt20" Placeholder="प्रारम्भ करने की उम्र व समय" MaxLength="100" CssClass="form-control txt" style="text-transform:uppercase;"></asp:TextBox>
                </div>

                <div class="input-group">
                    <span class="input-group-addon">21 - बालक का नौकरी या व्यवसाय में शामिल होने का मुख्य कारण</span>
                    <asp:DropDownList runat="server" ID="txt21" CssClass="form-control txt">
                        <asp:ListItem>चुनें</asp:ListItem>
                        <asp:ListItem>गरीबी या रूपयों की समस्या</asp:ListItem>
                        <asp:ListItem>घर के माता पिता का एड्स से ग्रसित होना</asp:ListItem>
                        <asp:ListItem>अपंगता</asp:ListItem>
                        <asp:ListItem>कोई गम्भीर बीमारी</asp:ListItem>
                        <asp:ListItem>माता पिता की मृत्यु</asp:ListItem>
                        <asp:ListItem>माता पिता द्वारा छोड़ा जाना</asp:ListItem>
                        <asp:ListItem>किसी के द्वारा बेचा जाना</asp:ListItem>
                        <asp:ListItem>अन्य कोई</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="input-group">
                    <span class="input-group-addon">22 - क्या बालक अन्य किसी क्षेत्र या प्रदेश से कार्य हेतु यहाँ आया है? ( हाँ / नहीं )</span>
                    <asp:DropDownList runat="server" ID="txt22" CssClass="form-control txt">
                        <asp:ListItem>चुनें</asp:ListItem>
                        <asp:ListItem>हाँ</asp:ListItem>
                        <asp:ListItem>नहीं</asp:ListItem>
                    </asp:DropDownList>
                </div>

                <div class="input-group">
                    <span class="input-group-addon">23 - यदि हाँ तो किसके साथ</span>
                    <asp:TextBox runat="server" ID="txt23" Placeholder="यदि हाँ तो किसके साथ" MaxLength="100" CssClass="form-control txt" style="text-transform:uppercase;"></asp:TextBox>
                </div>

                <div class="input-group">
                    <span class="input-group-addon">24 - स्थानान्तरित होने का समय व जन्म स्थान</span>
                    <asp:TextBox runat="server" ID="txt24" Placeholder="समय व जन्म स्थान" MaxLength="100" CssClass="form-control txt" style="text-transform:uppercase;"></asp:TextBox>
                </div>

                <div class="input-group">
                    <span class="input-group-addon">25 - स्थानान्तरण का कारण</span>
                    <asp:DropDownList runat="server" ID="txt25" CssClass="form-control txt">
                        <asp:ListItem>चुनें</asp:ListItem>
                        <asp:ListItem>व्यवसाय की खोज</asp:ListItem>
                        <asp:ListItem>बेहतर व्यवसाय की खोज</asp:ListItem>
                        <asp:ListItem>किसी सामाजिक या सामुदायिक मतभेद के कारण</asp:ListItem>
                        <asp:ListItem>माता पिता का स्थानान्तरित होना</asp:ListItem>
                        <asp:ListItem>अन्य कोई</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <br />

                <label style="font-size:16px;">(स) बच्चे के शिक्षा का विवरण ( कालम-26 से कालम-32 ) :</label>
                <div class="row">
                    <div class="col-md-6">
                        <div class="input-group">
                            <span class="input-group-addon">26 - शिक्षा</span>
                            <asp:DropDownList runat="server" ID="txt26a" CssClass="form-control txt">
                                <asp:ListItem>चुनें</asp:ListItem>
                                <asp:ListItem>शिक्षित</asp:ListItem>
                                <asp:ListItem>पढ़ते हुए स्कूल छोड़ दिया ( किस कक्षा से )</asp:ListItem>
                                <asp:ListItem>नौकरी के साथ पढ़ाई</asp:ListItem>
                                <asp:ListItem>कभी स्कूल नहीं गया</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="input-group">
                            <span class="input-group-addon">किस कक्षा से</span>
                            <asp:TextBox runat="server" ID="txt26b" Placeholder="कक्षा" TextMode="Number" CssClass="form-control txt" style="text-transform:uppercase;"></asp:TextBox>
                        </div>
                    </div>
                </div>

                <div class="input-group">
                    <span class="input-group-addon">27 - यदि शिक्षा में है तो कक्षा, जिसमें अध्ययनरत है</span>
                    <asp:TextBox runat="server" ID="txt27a" Placeholder="कक्षा जिसमें अध्ययनरत है" TextMode="Number" CssClass="form-control txt" style="text-transform:uppercase;"></asp:TextBox>
                </div>
                <div class="input-group">
                    <span class="input-group-addon">यदि शिक्षा में है तो स्कूल का नाम व पता</span>
                    <asp:TextBox runat="server" ID="txt27b" Placeholder="स्कूल का नाम व पता"  CssClass="form-control txt" style="text-transform:uppercase;resize:none;"></asp:TextBox>
                </div>
                
                <div class="input-group">
                    <span class="input-group-addon">28 - स्कूल छोड़ने का कारण</span>
                    <asp:DropDownList runat="server" ID="txt28" CssClass="form-control txt">
                        <asp:ListItem>चुनें</asp:ListItem>
                        <asp:ListItem>गरीबी</asp:ListItem>
                        <asp:ListItem>माता पिता द्वारा नौकरी को भेजा जाना</asp:ListItem>
                        <asp:ListItem>स्कूल का कमजोर वातावरण</asp:ListItem>
                        <asp:ListItem>पढ़ाई में रूचि की कमी</asp:ListItem>
                        <asp:ListItem>दबाव के कारण छोड़ना</asp:ListItem>
                        <asp:ListItem>स्कूल में सुविधाओं की कमी</asp:ListItem>
                        <asp:ListItem>व्यवसायिक प्रशिक्षण में भागीदारी के कारण</asp:ListItem>
                        <asp:ListItem>घर में आवश्यकता</asp:ListItem>
                        <asp:ListItem>किसी कक्षा के साथी / शिक्षक का डर</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="input-group">
                    <span class="input-group-addon">29 - यदि किसी व्यवसायिक प्रशिक्षण में भागीदारी कि तो प्रशिक्षण का नाम व संस्थान का पता</span>
                    <asp:TextBox runat="server" ID="txt29" Placeholder="प्रशिक्षण का नाम व संस्थान का पता" TextMode="MultiLine" Rows="2" CssClass="form-control txt" style="text-transform:uppercase;resize:none;"></asp:TextBox>
                </div>

                <div class="input-group">
                    <span class="input-group-addon">30 - यदि किसी प्रशिक्षण / स्कूल की व्यवस्था है तो क्या माता पिता बच्चे को प्रशिक्षण अथवा स्कूल भेजने को तैयार हैं</span>
                    <asp:DropDownList runat="server" ID="txt30a" CssClass="form-control txt">
                        <asp:ListItem>चुनें</asp:ListItem>
                        <asp:ListItem>हाँ</asp:ListItem>
                        <asp:ListItem>नहीं</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="input-group">
                    <span class="input-group-addon">यदि हाँ तो कार्य के साथ किस समय भेज सकते हैं ?</span>
                    <asp:DropDownList runat="server" ID="txt30b" CssClass="form-control txt">
                        <asp:ListItem>चुनें</asp:ListItem>
                        <asp:ListItem>सुबह</asp:ListItem>
                        <asp:ListItem>दोपहर</asp:ListItem>
                        <asp:ListItem>शाम</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="input-group">
                    <span class="input-group-addon">स्कूल / प्रशिक्षण हेतु बिल्कुल ना भेजने का कारण</span>
                    <asp:TextBox runat="server" ID="txt30c" Placeholder="ना भेजने का कारण" MaxLength="100" CssClass="form-control txt" style="text-transform:uppercase;"></asp:TextBox>
                </div>

                <div class="input-group">
                    <span class="input-group-addon">31 - सर्वेकर्ता द्वारा स्वयं की देखी गई कोई हो तो बतायें</span>
                    <asp:TextBox runat="server" ID="txt31" Placeholder="सर्वेकर्ता द्वारा स्वयं की देखी गई कोई हो तो बतायें" MaxLength="100" CssClass="form-control txt" style="text-transform:uppercase;"></asp:TextBox>
                </div>
                <div class="input-group">
                    <span class="input-group-addon">32 - बच्चे की स्वास्थय जनित समस्या यदि कोई हो तो</span>
                    <asp:TextBox runat="server" ID="txt32" Placeholder="बच्चे की स्वास्थय जनित समस्या यदि कोई हो तो" MaxLength="100" CssClass="form-control txt" style="text-transform:uppercase;"></asp:TextBox>
                </div><br />

                <label style="font-size:16px;">(द) बच्चे के माता-पिता का विवरण ( कालम-33 से कालम-36 ) :</label>
                <div class="row">
                    <div class="col-md-4">
                        <div class="input-group">
                            <span class="input-group-addon">33 - सम्बन्ध</span>
                            <div class="form-control txt" style="cursor:not-allowed;">पिता</div>
                        </div>
                        <div class="input-group">
                            <span class="input-group-addon">लिंग</span>
                            <asp:DropDownList runat="server" ID="txt33a" CssClass="form-control txt">
                                <asp:ListItem>पुरूष</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <div class="input-group">
                            <span class="input-group-addon">उम्र ( वर्ष में )</span>
                            <asp:TextBox runat="server" ID="txt33b" TextMode="Number" Placeholder="उम्र ( वर्ष में )" CssClass="form-control  txt"></asp:TextBox>
                        </div>
                        <div class="input-group">
                            <span class="input-group-addon">शिक्षा</span>
                            <asp:TextBox runat="server" ID="txt33c" Placeholder="शिक्षा" MaxLength="100" CssClass="form-control txt" style="text-transform:uppercase;"></asp:TextBox>
                        </div>
                        <div class="input-group">
                            <span class="input-group-addon">व्यवसाय</span>
                            <asp:TextBox runat="server" ID="txt33d" Placeholder="व्यवसाय" MaxLength="100" CssClass="form-control txt" style="text-transform:uppercase;"></asp:TextBox>
                        </div>
                        <div class="input-group">
                            <span class="input-group-addon">मासिक आय ( रूपये में )</span>
                            <asp:TextBox runat="server" ID="txt33e" TextMode="Number" Placeholder="मासिक आय ( रूपये में )" CssClass="form-control  txt"></asp:TextBox>
                        </div>
                    </div>

                    <div class="col-md-4">
                        <div class="input-group">
                            <span class="input-group-addon">34 - सम्बन्ध</span>
                            <div class="form-control txt" style="cursor:not-allowed;">माता</div>
                        </div>
                        <div class="input-group">
                            <span class="input-group-addon">लिंग</span>
                            <asp:DropDownList runat="server" ID="txt34a" CssClass="form-control txt">
                                <asp:ListItem>महिला</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <div class="input-group">
                            <span class="input-group-addon">उम्र ( वर्ष में )</span>
                            <asp:TextBox runat="server" ID="txt34b" TextMode="Number" Placeholder="उम्र ( वर्ष में )" CssClass="form-control  txt"></asp:TextBox>
                        </div>
                        <div class="input-group">
                            <span class="input-group-addon">शिक्षा</span>
                            <asp:TextBox runat="server" ID="txt34c" Placeholder="शिक्षा" MaxLength="100" CssClass="form-control txt" style="text-transform:uppercase;"></asp:TextBox>
                        </div>
                        <div class="input-group">
                            <span class="input-group-addon">व्यवसाय</span>
                            <asp:TextBox runat="server" ID="txt34d" Placeholder="व्यवसाय" MaxLength="100" CssClass="form-control txt" style="text-transform:uppercase;"></asp:TextBox>
                        </div>
                        <div class="input-group">
                            <span class="input-group-addon">मासिक आय ( रूपये में )</span>
                            <asp:TextBox runat="server" ID="txt34e" TextMode="Number" Placeholder="मासिक आय ( रूपये में )" CssClass="form-control  txt"></asp:TextBox>
                        </div>
                    </div>

                    <div class="col-md-4">
                        <div class="input-group">
                            <span class="input-group-addon">35 - सम्बन्ध</span>
                            <div class="form-control txt" style="cursor:not-allowed;">अभिवावक</div>
                        </div>
                        <div class="input-group">
                            <span class="input-group-addon">लिंग</span>
                            <asp:DropDownList runat="server" ID="txt35a" CssClass="form-control txt">
                                <asp:ListItem>चुनें</asp:ListItem>
                                <asp:ListItem>पुरूष</asp:ListItem>
                                <asp:ListItem>महिला</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <div class="input-group">
                            <span class="input-group-addon">उम्र ( वर्ष में )</span>
                            <asp:TextBox runat="server" ID="txt35b" TextMode="Number" Placeholder="उम्र ( वर्ष में )" CssClass="form-control  txt"></asp:TextBox>
                        </div>
                        <div class="input-group">
                            <span class="input-group-addon">शिक्षा</span>
                            <asp:TextBox runat="server" ID="txt35c" Placeholder="शिक्षा" MaxLength="100" CssClass="form-control txt" style="text-transform:uppercase;"></asp:TextBox>
                        </div>
                        <div class="input-group">
                            <span class="input-group-addon">व्यवसाय</span>
                            <asp:TextBox runat="server" ID="txt35d" Placeholder="व्यवसाय" MaxLength="100" CssClass="form-control txt" style="text-transform:uppercase;"></asp:TextBox>
                        </div>
                        <div class="input-group">
                            <span class="input-group-addon">मासिक आय ( रूपये में )</span>
                            <asp:TextBox runat="server" ID="txt35e" TextMode="Number" Placeholder="मासिक आय ( रूपये में )" CssClass="form-control  txt"></asp:TextBox>
                        </div>
                    </div>
                </div>

                <div class="input-group">
                    <span class="input-group-addon">36 - बच्चे के सम्बन्ध में अन्य कोई जानकारी</span>
                    <asp:TextBox runat="server" ID="txt36" Placeholder="बच्चे के सम्बन्ध में अन्य कोई जानकारी" MaxLength="100" CssClass="form-control txt" style="text-transform:uppercase;"></asp:TextBox>
                </div>
                <div class="input-group">
                    <span class="input-group-addon">37 - माता-पिता की वैवाहिक स्थिति</span>
                    <asp:DropDownList runat="server" ID="txt37" CssClass="form-control txt">
                        <asp:ListItem>चुनें</asp:ListItem>
                        <asp:ListItem>शादीशुदा साथ रहते हैं</asp:ListItem>
                        <asp:ListItem>अलग हो गये हैं</asp:ListItem>
                        <asp:ListItem>तलाक हो गया</asp:ListItem>
                        <asp:ListItem>विधवा / विदुर</asp:ListItem>
                        <asp:ListItem>कार्य की वजह से अलग रहते हैं</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <br />
            </div>
            <span style="color:red;font-family:karma;">* नोट : यह फार्म केवल ढ़ाँचा प्रदर्शित करने के लिए है।</span><br /><br />
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
