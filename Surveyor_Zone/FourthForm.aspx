<%@ Page Language="C#" AutoEventWireup="true" CodeFile="FourthForm.aspx.cs" Inherits="Surveyor_Zone_FourthForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>NCLP Form 3 of 3</title>
    <meta name="theme-color" content="#f8f8ff" />
	<meta name="msApplication-navbutton-color" content="#f8f8ff" />
	<meta name="apple-mobile-web-app-status-bar-style" content="#f8f8ff" />
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="keywords" content="Dummy_Content" />
	<meta charset="utf-8"/>
	<meta http-equiv="Content-Type" content="text/html;charset=UTF-8" />
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
        #picbox2, #picbox {
            height: 200px;
            width: 150px;
            background:none;
            border:none;
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
                <hr /><h2 style="text-align:center;font-family:karma;font-weight:bold;">14 वर्ष से कम आयु के बालक जो कार्य कर रहे हैं, का विवरण</h2>
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
                        <label for="picbox">12 - बच्चे का फोटो (30KB-100KB) :</label>
                        <div id="picbox">
                            <asp:Image runat="server" ID="picpreview" style='max-height:200px;width:100%;'/>
                        </div>
                        <asp:FileUpload runat="server" ID="pic" CssClass="form-control txt"/>
                        <label for="picbox2">बच्चे के साथ सेल्फी (30KB-100KB) :</label>
                        <div id="picbox2">
                            <asp:Image runat="server" ID="picpreview2" style='max-height:200px;width:100%;'/>
                        </div>
                        <asp:FileUpload runat="server" ID="pic2" CssClass="form-control txt"/>
                        <asp:Button runat="server" ID="uplink" CssClass="btn btn-warning btn-block click-on" style="margin-top:10px;" Text="Update Picture" OnClick="uplink_Click" />
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
                <div class="row">
                    <div class="col-md-12 text-center">
                        <asp:CheckBox runat="server" ID="agr" Text="&ensp;Agree" style="user-select:none;"/>
                    </div>
                </div>
                <asp:Button runat="server" ID="bbtn" Text="Back" CssClass="btn btn-danger pull-left click-on" style="font-weight:bold;" OnClick="bbtn_Click" />
                <asp:Button runat="server" ID="nbtn" Text="Final Submit" CssClass="btn btn-success pull-right click-on" style="font-weight:bold;" OnClick="nbtn_Click" />
                <asp:Button runat="server" ID="onebtn" CssClass="btn btn-success pull-right click-on" Text="Submit & Add One More" style="font-weight:bold;margin-right:10px;" OnClick="onebtn_Click" /><br />
            </div>
            <br />
        </div>
        <div class="col-lg-1">
            <asp:Label runat="server" ID="label1" CssClass="hide-label" Text=""></asp:Label>
            <asp:Label runat="server" ID="label2" CssClass="hide-label" Text=""></asp:Label>
            <asp:Label runat="server" ID="label3" CssClass="hide-label" Text=""></asp:Label>
            <asp:Label runat="server" ID="label4" CssClass="hide-label" Text=""></asp:Label>
            <asp:Label runat="server" ID="label5" CssClass="hide-label" Text=""></asp:Label>
            <asp:Label runat="server" ID="label6a" CssClass="hide-label" Text="चुनें"></asp:Label>
            <asp:Label runat="server" ID="label6b" CssClass="hide-label" Text=""></asp:Label>
            <asp:Label runat="server" ID="label7" CssClass="hide-label" Text="चुनें"></asp:Label>
            <asp:Label runat="server" ID="label8" CssClass="hide-label" Text="चुनें"></asp:Label>
            <asp:Label runat="server" ID="label9" CssClass="hide-label" Text="चुनें"></asp:Label>
            <asp:Label runat="server" ID="label10a" CssClass="hide-label" Text=""></asp:Label>
            <asp:Label runat="server" ID="label10b" CssClass="hide-label" Text=""></asp:Label>
            <asp:Label runat="server" ID="label11a" CssClass="hide-label" Text=""></asp:Label>
            <asp:Label runat="server" ID="label11b" CssClass="hide-label" Text=""></asp:Label>
            <asp:Label runat="server" ID="label12a" CssClass="hide-label" Text=""></asp:Label>
            <asp:Label runat="server" ID="label12b" CssClass="hide-label" Text=""></asp:Label>
            <asp:Label runat="server" ID="label13" CssClass="hide-label" Text="चुनें"></asp:Label>
            <asp:Label runat="server" ID="label14" CssClass="hide-label" Text=""></asp:Label>
            <asp:Label runat="server" ID="label15a" CssClass="hide-label" Text="चुनें"></asp:Label>
            <asp:Label runat="server" ID="label15b" CssClass="hide-label" Text="चुनें"></asp:Label>
            <asp:Label runat="server" ID="label16" CssClass="hide-label" Text=""></asp:Label>
            <asp:Label runat="server" ID="label17" CssClass="hide-label" Text=""></asp:Label>
            <asp:Label runat="server" ID="label18" CssClass="hide-label" Text=""></asp:Label>
            <asp:Label runat="server" ID="label19" CssClass="hide-label" Text=""></asp:Label>
            <asp:Label runat="server" ID="label20" CssClass="hide-label" Text=""></asp:Label>
            <asp:Label runat="server" ID="label21" CssClass="hide-label" Text="चुनें"></asp:Label>
            <asp:Label runat="server" ID="label22" CssClass="hide-label" Text="चुनें"></asp:Label>
            <asp:Label runat="server" ID="label23" CssClass="hide-label" Text=""></asp:Label>
            <asp:Label runat="server" ID="label24" CssClass="hide-label" Text=""></asp:Label>
            <asp:Label runat="server" ID="label25" CssClass="hide-label" Text="चुनें"></asp:Label>
            <asp:Label runat="server" ID="label26a" CssClass="hide-label" Text="चुनें"></asp:Label>
            <asp:Label runat="server" ID="label26b" CssClass="hide-label" Text=""></asp:Label>
            <asp:Label runat="server" ID="label27a" CssClass="hide-label" Text=""></asp:Label>
            <asp:Label runat="server" ID="label27b" CssClass="hide-label" Text=""></asp:Label>
            <asp:Label runat="server" ID="label28" CssClass="hide-label" Text="चुनें"></asp:Label>
            <asp:Label runat="server" ID="label29" CssClass="hide-label" Text=""></asp:Label>
            <asp:Label runat="server" ID="label30a" CssClass="hide-label" Text="चुनें"></asp:Label>
            <asp:Label runat="server" ID="label30b" CssClass="hide-label" Text="चुनें"></asp:Label>
            <asp:Label runat="server" ID="label30c" CssClass="hide-label" Text="चुनें"></asp:Label>
            <asp:Label runat="server" ID="label31" CssClass="hide-label" Text=""></asp:Label>
            <asp:Label runat="server" ID="label32" CssClass="hide-label" Text=""></asp:Label>
            <asp:Label runat="server" ID="label33a" CssClass="hide-label" Text="पुरूष"></asp:Label>
            <asp:Label runat="server" ID="label33b" CssClass="hide-label" Text=""></asp:Label>
            <asp:Label runat="server" ID="label33c" CssClass="hide-label" Text=""></asp:Label>
            <asp:Label runat="server" ID="label33d" CssClass="hide-label" Text=""></asp:Label>
            <asp:Label runat="server" ID="label33e" CssClass="hide-label" Text=""></asp:Label>
            <asp:Label runat="server" ID="label34a" CssClass="hide-label" Text="महिला"></asp:Label>
            <asp:Label runat="server" ID="label34b" CssClass="hide-label" Text=""></asp:Label>
            <asp:Label runat="server" ID="label34c" CssClass="hide-label" Text=""></asp:Label>
            <asp:Label runat="server" ID="label34d" CssClass="hide-label" Text=""></asp:Label>
            <asp:Label runat="server" ID="label34e" CssClass="hide-label" Text=""></asp:Label>
            <asp:Label runat="server" ID="label35a" CssClass="hide-label" Text="चुनें"></asp:Label>
            <asp:Label runat="server" ID="label35b" CssClass="hide-label" Text=""></asp:Label>
            <asp:Label runat="server" ID="label35c" CssClass="hide-label" Text=""></asp:Label>
            <asp:Label runat="server" ID="label35d" CssClass="hide-label" Text=""></asp:Label>
            <asp:Label runat="server" ID="label35e" CssClass="hide-label" Text=""></asp:Label>
            <asp:Label runat="server" ID="label36" CssClass="hide-label" Text=""></asp:Label>
            <asp:Label runat="server" ID="label37" CssClass="hide-label" Text="चुनें"></asp:Label>
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
        $("#txt15b").attr("disabled", true);
        $("#txt23").attr("disabled", true);
        $("#txt6b").attr("disabled", true);
        $("#txt24").attr("disabled", true);
        $("#txt25").attr("disabled", true);
        $("#txt27a").attr("disabled", true);
        $("#txt27b").attr("disabled", true);
        $("#txt28").attr("disabled", true);
        $("#txt30b").attr("disabled", true);
        $("#txt30c").attr("disabled", true);
        $("#txt26b").attr("disabled", true);
        $("#onebtn").hide();
        $("#nbtn").val("Please Agree before Submit");
        if ($("#label12a").text() == "y")
            $("#pic").remove();
        else {
            $("#uplink").remove();
        }
        if ($("#label12a").text() == "y")
            $("#pic2").hide();
        else {
            $("#uplink").hide();
        }
        $("#txt4").blur(function () {
            var t4 = document.getElementById("txt4");
            if (t4.value >= 0 && t4.value <= 14) {

            }
            else if (t4.value <= 2018 && t4.value >= 2004) {
                
            }
            else {
                alert("Enter correct value in 4 - जन्म तिथि वर्ष अथवा 1-1-2017 को लगभग आयु ( वर्ष में ).");
                t4.value = "";
                t4.focus();
            }
        });
        $("#txt6a").bind("change", function () {
            var t6b = document.getElementById("txt6b");
            if ($("#txt6a").val() == "हाँ") {
                $("#txt6b").attr("disabled", false);
            }
            else {
                t6b.value = "";
                $("#txt6b").attr("disabled", true);
            }
        });
        $("#txt6b").blur(function () {
            var t6b = document.getElementById("txt6b");
            if (t6b.value == 0) {

            }
            else if (t6b.value >= 100000000000 && t6b.value <= 999999999999) {

            }
            else {
                alert("Enter correct value in यदि हाँ तो आधार क्रमांक ( 12 अंक ).");
                t6b.value = "";
                t6b.focus();
            }
        });
        $("#txt15a").bind("change", function () {
            var t15b = document.getElementById("txt15b");
            if ($("#txt15a").val() == "हाँ") {
                $("#txt15b").attr("disabled", false);
            }
            else {
                t15b.selectedIndex = 0;
                $("#txt15b").attr("disabled", true);
            }
        });
        $("#txt18").blur(function () {
            var t18 = document.getElementById("txt18");
            if (t18.value < 0) {
                alert("Enter correct value in 18 - आय ( प्रतिदिन रूपये में ).");
                t18.value = "";
                t18.focus();
            }
        });
        $("#txt26b").blur(function () {
            var t26b = document.getElementById("txt26b");
            if (t18.value < 0 || t18.value > 12) {
                alert("Enter correct value in किस कक्षा से.");
                t26b.value = "";
                t26b.focus();
            }
        });
        $("#txt27a").blur(function () {
            var t27a = document.getElementById("txt27a");
            if (t18.value < 0 || t18.value > 12) {
                alert("Enter correct value in 27 - यदि शिक्षा में है तो कक्षा, जिसमें अध्ययनरत है.");
                t27a.value = "";
                t27a.focus();
            }
        });
        $("#txt33b").blur(function () {
            var t18 = document.getElementById("txt33b");
            if (t18.value < 0 || t18.value > 100) {
                alert("Enter correct value in उम्र ( वर्ष में ).");
                t18.value = "";
                t18.focus();
            }
        });
        $("#txt33e").blur(function () {
            var t18 = document.getElementById("txt33e");
            if (t18.value < 0) {
                alert("Enter correct value in मासिक आय ( रूपये में ).");
                t18.value = "";
                t18.focus();
            }
        });
        $("#txt34b").blur(function () {
            var t18 = document.getElementById("txt34b");
            if (t18.value < 0 || t18.value > 100) {
                alert("Enter correct value in उम्र ( वर्ष में ).");
                t18.value = "";
                t18.focus();
            }
        });
        $("#txt34e").blur(function () {
            var t18 = document.getElementById("txt34e");
            if (t18.value < 0) {
                alert("Enter correct value in मासिक आय ( रूपये में ).");
                t18.value = "";
                t18.focus();
            }
        });
        $("#txt35b").blur(function () {
            var t18 = document.getElementById("txt35b");
            if (t18.value < 0 || t18.value > 100) {
                alert("Enter correct value in उम्र ( वर्ष में ).");
                t18.value = "";
                t18.focus();
            }
        });
        $("#txt35e").blur(function () {
            var t18 = document.getElementById("txt35e");
            if (t18.value < 0) {
                alert("Enter correct value in मासिक आय ( रूपये में ).");
                t18.value = "";
                t18.focus();
            }
        });

        $("#txt17").blur(function () {
            var t17 = document.getElementById("txt17");
            if (t17.value < 0 || t17.value > 24) {
                alert("Enter correct value in 17 - कार्य के घण्टे ( प्रतिदिन ).");
                t17.value = "";
                t17.focus();
            }
        });
        $("#txt22").bind("change", function () {
            var t23 = document.getElementById("txt23");
            var t24 = document.getElementById("txt24");
            var t25 = document.getElementById("txt25");
            if ($("#txt22").val() == "हाँ") {
                $("#txt23").attr("disabled", false);
                $("#txt24").attr("disabled", false);
                $("#txt25").attr("disabled", false);
            }
            else {
                t23.value = "";
                t24.value = "";
                t25.selectedIndex = 0;
                $("#txt23").attr("disabled", true);
                $("#txt24").attr("disabled", true);
                $("#txt25").attr("disabled", true);
            }
        });
        $("#txt26a").bind("change", function () {
            var t26b = document.getElementById("txt26b");
            var t28 = document.getElementById("txt28");
            if ($("#txt26a").val() == "पढ़ते हुए स्कूल छोड़ दिया ( किस कक्षा से )") {
                $("#txt27a").attr("disabled", true);
                $("#txt27b").attr("disabled", true);
                $("#txt26b").attr("disabled", false);
                $("#txt28").attr("disabled", false);
            }
            else if ($("#txt26a").val() == "नौकरी के साथ पढ़ाई") {
                $("#txt28").attr("disabled", true);
                $("#txt26b").attr("disabled", true);
                $("#txt27a").attr("disabled", false);
                $("#txt27b").attr("disabled", false);
            }
            else if ($("#txt26a").val() == "कभी स्कूल नहीं गया") {
                $("#txt28").attr("disabled", true);
                $("#txt26b").attr("disabled", true);
                $("#txt27a").attr("disabled", true);
                $("#txt27b").attr("disabled", true);
            }
            else {
                t26b.value = "";
                t27a.value = "";
                t27b.value = "";
                t28.selectedIndex = 0;
                $("#txt27a").attr("disabled", true);
                $("#txt27b").attr("disabled", true);
                $("#txt28").attr("disabled", true);
                $("#txt26b").attr("disabled", true);
            }
        });
        $("#txt30a").bind("change", function () {
            var t30b = document.getElementById("txt30b");
            var t30c = document.getElementById("txt30c");
            if ($("#txt30a").val() == "हाँ") {
                t30c.value = "";
                $("#txt30b").attr("disabled", false);
                $("#txt30c").attr("disabled", true);
            }
            else if ($("#txt30a").val() == "नहीं")
            {
                t30b.selectedIndex = 0;
                $("#txt30b").attr("disabled", true);
                $("#txt30c").attr("disabled", false);
            }
            else {
                t30c.value = "";
                t30b.selectedIndex = 0;
                $("#txt30b").attr("disabled", true);
                $("#txt30c").attr("disabled", true);
            }
        });
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
                        }
                        reader.readAsDataURL(a.files[0]);
                    }
                }
                img.src = _URL.createObjectURL(a.files[0]);
            }
        });

        $("#smaddress").bind("change", function () {
            var ch = document.getElementById("smaddress");
            var t10a = document.getElementById("txt10a");
            var t10b = document.getElementById("txt10b");
            var t11a = document.getElementById("txt11a");
            var t11b = document.getElementById("txt11b");
            if (ch.checked == true) {
                if (t10a.value == "") {
                    alert("Enter value first.");
                    ch.checked = false;
                    t10a.focus();
                }
                else if (t10b.value == "") {
                    alert("Enter value first.");
                    ch.checked = false;
                    t10b.focus();
                }
                else {
                    t11a.value = t10a.value;
                    t11b.value = t10b.value;
                }
            }
            else {
                t11a.value = "";
                t11b.value = "";
            }
        });
        $("#agr").bind("change", function () {
            var ch = document.getElementById("agr");
            var t2 = document.getElementById("txt2");
            var t3 = document.getElementById("txt3");
            var t4 = document.getElementById("txt4");
            var t5 = document.getElementById("txt5");
            var t6a = document.getElementById("txt6a");
            var t6b = document.getElementById("txt6b");
            var t7 = document.getElementById("txt7");
            var t8 = document.getElementById("txt8");
            var t9 = document.getElementById("txt9");
            var t10a = document.getElementById("txt10a");
            var t10b = document.getElementById("txt10b");
            var t11a = document.getElementById("txt11a");
            var t11b = document.getElementById("txt11b");
            var t12 = document.getElementById("txt12");
            var t13 = document.getElementById("txt13");
            var t14 = document.getElementById("txt14");
            var t15a = document.getElementById("txt15a");
            var t15b = document.getElementById("txt15b");
            var t16 = document.getElementById("txt16");
            var t17 = document.getElementById("txt17");
            var t18 = document.getElementById("txt18");
            var t19 = document.getElementById("txt19");
            var t20 = document.getElementById("txt20");
            var t21 = document.getElementById("txt21");
            var t22 = document.getElementById("txt22");
            var t23 = document.getElementById("txt23");
            var t24 = document.getElementById("txt24");
            var t25 = document.getElementById("txt25");
            var t26a = document.getElementById("txt26a");
            var t26b = document.getElementById("txt26b");
            var t27a = document.getElementById("txt27a");
            var t27b = document.getElementById("txt27b");
            var t28 = document.getElementById("txt28");
            var t29 = document.getElementById("txt29");
            var t30a = document.getElementById("txt30a");
            var t30b = document.getElementById("txt30b");
            var t30c = document.getElementById("txt30c");
            var t31 = document.getElementById("txt31");
            var t32 = document.getElementById("txt32");
            var t33a = document.getElementById("txt33a");
            var t33b = document.getElementById("txt33b");
            var t33c = document.getElementById("txt33c");
            var t33d = document.getElementById("txt33d");
            var t33e = document.getElementById("txt33e");
            var t34a = document.getElementById("txt34a");
            var t34b = document.getElementById("txt34b");
            var t34c = document.getElementById("txt34c");
            var t34d = document.getElementById("txt34d");
            var t34e = document.getElementById("txt34e");
            var t35a = document.getElementById("txt35a");
            var t35b = document.getElementById("txt35b");
            var t35c = document.getElementById("txt35c");
            var t35d = document.getElementById("txt35d");
            var t35e = document.getElementById("txt35e");
            var t36 = document.getElementById("txt36");
            var t37 = document.getElementById("txt37");
            var p = document.getElementById("pic");
            var p2 = document.getElementById("pic2");
            if (ch.checked == true) {
                if ($("#label12a").text() == "y")
                    $("#pic").remove();
                else {
                    if (p.files.length == 0) {
                        alert("Please Upload a picture with 30KB-100KB size.");
                        ch.checked = false;
                        p.focus();
                    }
                }
                if ($("#label12a").text() == "y")
                    $("#pic2").remove();
                else {
                    if (p2.files.length == 0) {
                        alert("Please Upload a picture with 30KB-100KB size.");
                        ch.checked = false;
                        p2.focus();
                    }
                }
                if (t2.value == "") {
                    alert("Please Enter 2 - बच्चे का नाम first.");
                    ch.checked = false;
                    t2.focus();
                }
                else if (t3.value == "") {
                    alert("Please Enter 3 - बच्चे का घर का नाम first.");
                    ch.checked = false;
                    t3.focus();
                }
                else if (t4.value == "") {
                    alert("Please Enter 4 - बच्चे की जन्म तिथि ( वास्तविक ) first.");
                    ch.checked = false;
                    t4.focus();
                }
                else if (t5.value == "") {
                    alert("Please Enter 5 - बच्चे की जन्म तिथि ( दस्तावेज मे ) first.");
                    ch.checked = false;
                    t5.focus();
                }
                else if ($("#txt6a").val() == "चुनें") {
                    alert("Please Choose 6 - आधार कार्ड है? ( हाँ / नहीं ) first.");
                    ch.checked = false;
                    t6a.focus();
                }
                    
                
                /*else if ($("#txt7").val() == "चुनें") {
                    alert("Please Choose 7 - राशन कार्ड है? ( हाँ / नहीं ) first.");
                    ch.checked = false;
                    t7.focus();
                }
                else if ($("#txt8").val() == "चुनें") {
                    alert("Please Choose 8 - धर्म first.");
                    ch.checked = false;
                    t8.focus();
                }
                else if ($("#txt9").val() == "चुनें") {
                    alert("Please Choose 9 - जाति first.");
                    ch.checked = false;
                    t9.focus();
                }
                else if (t10a.value == "") {
                    alert("Please Enter 10 - पता ( अस्थाई ) first.");
                    ch.checked = false;
                    t10a.focus();
                }
                else if (t10b.value == "") {
                    alert("Please Enter 10 - पता ( अस्थाई ) / कोई पहचान चिन्ह first.");
                    ch.checked = false;
                    t10b.focus();
                }
                else if (t11a.value == "") {
                    alert("Please Enter 11 - पता ( स्थाई ) first.");
                    ch.checked = false;
                    t11a.focus();
                }
                else if (t11b.value == "") {
                    alert("Please Enter 11 - पता ( स्थाई ) / कोई पहचान चिन्ह first.");
                    ch.checked = false;
                    t11b.focus();
                }
                
                else if ($("#txt13").val() == "चुनें") {
                    alert("Please Choose 13 - कार्य का प्रकार first.");
                    ch.checked = false;
                    t13.focus();
                }
                else if (t14.value=="") {
                    alert("Please Enter 14 - व्यवसाय के पद का नाम first.");
                    ch.checked = false;
                    t14.focus();
                }
                else if ($("#txt15a").val() == "चुनें") {
                    alert("Please Choose 15 - क्या किया जाने वाला कार्य बच्चे के लिए खतरनाक है? ( हाँ / नहीं ) first.");
                    ch.checked = false;
                    t15a.focus();
                }
                else if (t16.value == "") {
                    alert("Please Enter 16 - कार्य एवं व्यवसाय स्थल का पता first.");
                    ch.checked = false;
                    t16.focus();
                }
                else if (t17.value == "") {
                    alert("Please Enter 17 - कार्य के घण्टे ( प्रतिदिन ) first.");
                    ch.checked = false;
                    t17.focus();
                }
                else if (t18.value == "") {
                    alert("Please Enter 18 - आय ( प्रतिदिन रूपये में ) first.");
                    ch.checked = false;
                    t18.focus();
                }
                else if (t19.value == "") {
                    alert("Please Enter 19 - बच्चे द्वारा किया जाने वाला कार्य first.");
                    ch.checked = false;
                    t19.focus();
                }
                else if (t20.value == "") {
                    alert("Please Enter 20 - कब से कार्यरत है ( प्रारम्भ करने की उम्र व समय ) first.");
                    ch.checked = false;
                    t20.focus();
                }
                else if ($("#txt21").val() == "चुनें") {
                    alert("Please Choose 21 - बालक का नौकरी या व्यवसाय में शामिल होने का मुख्य कारण first.");
                    ch.checked = false;
                    t21.focus();
                }
                else if ($("#txt22").val() == "चुनें") {
                    alert("Please Choose 22 - क्या बालक अन्य किसी क्षेत्र या प्रदेश से कार्य हेतु यहाँ आया है? ( हाँ / नहीं ) first.");
                    ch.checked = false;
                    t22.focus();
                }
                else if ($("#txt26a").val() == "चुनें") {
                    alert("Please Choose 26 - शिक्षा first.");
                    ch.checked = false;
                    t26.focus();
                }
                else if (t29.value == "") {
                    alert("Please Enter 29 - यदि व्यवसायिक प्रशिक्षण में भागीदारी कि तो प्रशिक्षण का नाम व संस्थान का पता first.");
                    ch.checked = false;
                    t29.focus();
                }
                else if ($("#txt30a").val() == "चुनें") {
                    alert("Please Choose 30 - यदि किसी प्रशिक्षण / स्कूल की व्यवस्था की आवश्यकता है तो क्या माता पिता बच्चे को प्रशिक्षण अथवा स्कूल भेजने को तैयार हैं first.");
                    ch.checked = false;
                    t30a.focus();
                }
                else if (t31.value == "") {
                    alert("Please Enter 31 - सर्वेकर्ता द्वारा स्वयं की देखी गई कोई हो तो बतायें first.");
                    ch.checked = false;
                    t31.focus();
                }
                else if (t32.value == "") {
                    alert("Please Enter 32 - बच्चे की स्वास्थय जनित समस्या यदि कोई हो तो first.");
                    ch.checked = false;
                    t32.focus();
                }
                else if (t33b.value == "") {
                    alert("Please Enter 33 - सम्बन्ध / पिता / उम्र ( वर्ष में ) first.");
                    ch.checked = false;
                    t33b.focus();
                }
                else if (t33c.value == "") {
                    alert("Please Enter 33 - सम्बन्ध / पिता / शिक्षा first.");
                    ch.checked = false;
                    t33c.focus();
                }
                else if (t33d.value == "") {
                    alert("Please Enter 33 - सम्बन्ध / पिता / व्यवसाय first.");
                    ch.checked = false;
                    t33d.focus();
                }
                else if (t33e.value == "") {
                    alert("Please Enter 33 - सम्बन्ध / पिता / मासिक आय ( रूपये में ) first.");
                    ch.checked = false;
                    t33e.focus();
                }
                else if (t34b.value == "") {
                    alert("Please Enter 34 - सम्बन्ध / माता / उम्र ( वर्ष में ) first.");
                    ch.checked = false;
                    t34b.focus();
                }
                else if (t34c.value == "") {
                    alert("Please Enter 34 - सम्बन्ध / माता / शिक्षा first.");
                    ch.checked = false;
                    t34c.focus();
                }
                else if (t34d.value == "") {
                    alert("Please Enter 34 - सम्बन्ध / माता / व्यवसाय first.");
                    ch.checked = false;
                    t34d.focus();
                }
                else if (t34e.value == "") {
                    alert("Please Enter 34 - सम्बन्ध / माता / मासिक आय ( रूपये में ) first.");
                    ch.checked = false;
                    t34e.focus();
                }
                else if ($("#txt35a").val() == "चुनें") {
                    alert("Please Choose 35 - सम्बन्ध / अभिवावक / लिंग first.");
                    ch.checked = false;
                    t35a.focus();
                }
                else if (t35b.value == "") {
                    alert("Please Enter 35 - सम्बन्ध / अभिवावक / उम्र ( वर्ष में ) first.");
                    ch.checked = false;
                    t35b.focus();
                }
                else if (t35c.value == "") {
                    alert("Please Enter 35 - सम्बन्ध / अभिवावक / शिक्षा first.");
                    ch.checked = false;
                    t35c.focus();
                }
                else if (t35d.value == "") {
                    alert("Please Enter 35 - सम्बन्ध / अभिवावक / व्यवसाय first.");
                    ch.checked = false;
                    t35d.focus();
                }
                else if (t35e.value == "") {
                    alert("Please Enter 35 - सम्बन्ध / अभिवावक / मासिक आय ( रूपये में ) first.");
                    ch.checked = false;
                    t35e.focus();
                }
                else if (t36.value == "") {
                    alert("Please Enter 36 - बच्चे के सम्बन्ध में अन्य कोई जानकारी first.");
                    ch.checked = false;
                    t36.focus();
                }
                else if ($("#txt37").val() == "चुनें") {
                    alert("Please Choose 37 - माता-पिता की वैवाहिक स्थिति first.");
                    ch.checked = false;
                    t37.focus();
                }*/
                else {
                    if ($("#txt6a").val() == "हाँ" && t6b.value == "") {
                        alert("Please Enter यदि हाँ तो आधार क्रमांक ( 12 अंक ) first.");
                        ch.checked = false;
                        t6b.focus();
                    }
                    /*else if($("#txt22").val() == "हाँ" && t24.value=="") {
                        alert("Please Enter 24 - स्थानान्तरित होने का समय व जन्म स्थान first.");
                        ch.checked = false;
                        t24.focus();
                    }
                    else if ($("#txt22").val() == "हाँ" && t23.value=="") {
                        alert("Please Enter 23 - यदि हाँ तो किसके साथ first.");
                        ch.checked = false;
                        t23.focus();
                    }
                    else if ($("#txt30a").val() == "हाँ" && $("#txt30b").val() == "चुनें") {
                        alert("Please Choose यदि हाँ तो कार्य के साथ किस समय भेज सकते हैं ? first.");
                        ch.checked = false;
                        t30b.focus();
                    }
                    else if ($("#txt30a").val() == "नहीं" && t30c.value=="") {
                        alert("Please Choose स्कूल / प्रशिक्षण हेतु बिल्कुल ना भेजने का कारण first.");
                        ch.checked = false;
                        t30c.focus();
                    }
                    else if ($("#txt15a").val() == "हाँ" && $("#txt15b").val() == "चुनें") {
                        alert("Please Choose बच्चे द्वारा किया जाने वाला कार्य first.");
                        ch.checked = false;
                        t15b.focus();
                    }
                    else if ($("#txt22").val() == "हाँ" && $("#txt25").val() == "चुनें") {
                        alert("Please Choose 25 - स्थानान्तरण का कारण first.");
                        ch.checked = false;
                        t25.focus();
                    }
                    else if ($("#txt26a").val() == "पढ़ते हुए स्कूल छोड़ दिया ( किस कक्षा से )" && $("#txt28").val() == "चुनें") {
                        alert("Please Choose 28 - स्कूल छोड़ने का कारण first.");
                        ch.checked = false;
                        t28.focus();
                    }
                    else if ($("#txt26a").val() == "पढ़ते हुए स्कूल छोड़ दिया ( किस कक्षा से )" && t26b.value=="") {
                        alert("Please Enter किस कक्षा से first.");
                        ch.checked = false;
                        t26b.focus();
                    }
                    else if ($("#txt26a").val() == "नौकरी के साथ पढ़ाई" && t27a.value=="") {
                        alert("Please Enter 27 - यदि शिक्षा में है तो कक्षा, जिसमें अध्ययनरत है first.");
                        ch.checked = false;
                        t27a.focus();
                    }
                    else if ($("#txt26a").val() == "नौकरी के साथ पढ़ाई" && t27b.value=="") {
                        alert("Please Enter यदि शिक्षा में है तो स्कूल का नाम व पता first.");
                        ch.checked = false;
                        t27b.focus();
                    }
                    */
                    else {
                        $("#nbtn").attr("disabled", false);
                        $("#onebtn").show();
                        $("#nbtn").val("Final Submit");
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
            var t6a = document.getElementById("txt6a");
            var t6b = document.getElementById("txt6b");
            var t7 = document.getElementById("txt7");
            var t8 = document.getElementById("txt8");
            var t9 = document.getElementById("txt9");
            var t10a = document.getElementById("txt10a");
            var t10b = document.getElementById("txt10b");
            var t11a = document.getElementById("txt11a");
            var t11b = document.getElementById("txt11b");
            var t13 = document.getElementById("txt13");
            var t14 = document.getElementById("txt14");
            var t15a = document.getElementById("txt15a");
            var t15b = document.getElementById("txt15b");
            var t16 = document.getElementById("txt16");
            var t17 = document.getElementById("txt17");
            var t18 = document.getElementById("txt18");
            var t19 = document.getElementById("txt19");
            var t20 = document.getElementById("txt20");
            var t21 = document.getElementById("txt21");
            var t22 = document.getElementById("txt22");
            var t23 = document.getElementById("txt23");
            var t24 = document.getElementById("txt24");
            var t25 = document.getElementById("txt25");
            var t26a = document.getElementById("txt26a");
            var t26b = document.getElementById("txt26b");
            var t27a = document.getElementById("txt27a");
            var t27b = document.getElementById("txt27b");
            var t28 = document.getElementById("txt28");
            var t29 = document.getElementById("txt29");
            var t30a = document.getElementById("txt30a");
            var t30b = document.getElementById("txt30b");
            var t30c = document.getElementById("txt30c");
            var t31 = document.getElementById("txt31");
            var t32 = document.getElementById("txt32");
            var t33a = document.getElementById("txt33a");
            var t33b = document.getElementById("txt33b");
            var t33c = document.getElementById("txt33c");
            var t33d = document.getElementById("txt33d");
            var t33e = document.getElementById("txt33e");
            var t34a = document.getElementById("txt34a");
            var t34b = document.getElementById("txt34b");
            var t34c = document.getElementById("txt34c");
            var t34d = document.getElementById("txt34d");
            var t34e = document.getElementById("txt34e");
            var t35a = document.getElementById("txt35a");
            var t35b = document.getElementById("txt35b");
            var t35c = document.getElementById("txt35c");
            var t35d = document.getElementById("txt35d");
            var t35e = document.getElementById("txt35e");
            var t36 = document.getElementById("txt36");
            var t37 = document.getElementById("txt37");
            t2.value = $("#label2").text();
            t3.value = $("#label3").text();
            t4.value = $("#label4").text();
            t5.value = $("#label5").text();
            t6a.value = $("#label6a").text();
            if (t6a.value == "हाँ") {
                $("#txt6b").attr("disabled", false);
            }
            t6b.value = $("#label6b").text();
            t7.value = $("#label7").text();
            t8.value = $("#label8").text();
            t9.value = $("#label9").text();
            t10a.value = $("#label10a").text();
            t10b.value = $("#label10b").text();
            t11a.value = $("#label11a").text();
            t11b.value = $("#label11b").text();
            
            t13.value = $("#label13").text();
            t14.value = $("#label14").text();
            t15a.value = $("#label15a").text();
            if (t15a.value == "हाँ") {
                $("#txt15b").attr("disabled", false);
            }
            t15b.value = $("#label15b").text();
            t16.value = $("#label16").text();
            t17.value = $("#label17").text();
            t18.value = $("#label18").text();
            t19.value = $("#label19").text();
            t20.value = $("#label20").text();
            t21.value = $("#label21").text();
            t22.value = $("#label22").text();
            if (t22.value == "हाँ") {
                $("#txt23").attr("disabled", false);
                $("#txt24").attr("disabled", false);
                $("#txt25").attr("disabled", false);
            }
            t23.value = $("#label23").text();
            t24.value = $("#label24").text();
            t25.value = $("#label25").text();
            t26a.value = $("#label26a").text();
            if (t26a.value == "नौकरी के साथ पढ़ाई") {
                $("#txt27a").attr("disabled", false);
                $("#txt27b").attr("disabled", false);
            }
            if (t26a.value == "पढ़ते हुए स्कूल छोड़ दिया ( किस कक्षा से )") {
                $("#txt28").attr("disabled", false);
                $("#txt26b").attr("disabled", false);
            }
            t26b.value = $("#label26b").text();
            t27a.value = $("#label27a").text();
            t27b.value = $("#label27b").text();
            t28.value = $("#label28").text();
            t29.value = $("#label29").text();
            t30a.value = $("#label30a").text();
            if (t30a.value == "हाँ") {
                $("#txt30b").attr("disabled", false);
            }
            if (t30a.value == "नहीं") {
                $("#txt30c").attr("disabled", false);
            }
            t30b.value = $("#label30b").text();
            t30c.value = $("#label30c").text();
            t31.value = $("#label31").text();
            t32.value = $("#label32").text();
            t33a.value = $("#label33a").text();
            t33b.value = $("#label33b").text();
            t33c.value = $("#label33c").text();
            t33d.value = $("#label33d").text();
            t33e.value = $("#label33e").text();
            t34a.value = $("#label34a").text();
            t34b.value = $("#label34b").text();
            t34c.value = $("#label34c").text();
            t34d.value = $("#label34d").text();
            t34e.value = $("#label34e").text();
            t35a.value = $("#label35a").text();
            t35b.value = $("#label35b").text();
            t35c.value = $("#label35c").text();
            t35d.value = $("#label35d").text();
            t35e.value = $("#label35e").text();
            t36.value = $("#label36").text();
            t37.value = $("#label37").text();
        });
    </script>
</body>
</html>
