<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MailTrial.aspx.cs" Inherits="MailTrial" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>mail</title>
    <meta name="google-site-verification" content="14WxE_r0dxgHMhJIoxiODhdgq9mPksFOXFzJOn7kYGo" />
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>  
    <meta name="theme-color" content="#3b3251" />
    <meta name="msApplication-navbutton-color" content="#3b3251" />
    <meta name="apple-mobile-web-app-status-bar-style" content="#3b3251" />
    <link id="Link1" runat="server" rel="Shortcut Icon" href="Images/fi.png" type="image/x-icon"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link href="https://fonts.googleapis.com/css?family=Finger+Paint|Gloria+Hallelujah|Homemade+Apple" rel="stylesheet"/>
    <link href="https://fonts.googleapis.com/css?family=Faster+One|Freckle+Face|Gamja+Flower|Hi+Melody|Hind" rel="stylesheet">
    <!--font-family: 'Gloria Hallelujah', cursive; font-family: 'Homemade Apple', cursive; font-family: 'Finger Paint', cursive;-->
    <!--font-family: 'Hind', sans-serif;
        font-family: 'Gamja Flower', cursive;
        font-family: 'Hi Melody', cursive;
        font-family: 'Freckle Face', cursive;
        font-family: 'Faster One', cursive;-->
    <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css"/>
    <link href="ExtCSS/MyCSS.css" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css"/>
    <script src="MyJS/MyJS.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div><br />
            <div class="row">
                <div class="col-sm-4">

                </div>
                <div class="col-sm-4">
                    <asp:TextBox runat="server" ID="txttomail" TextMode="Email" CssClass="form-control" placeholder="To Mail"></asp:TextBox><br />
                    <asp:TextBox runat="server" ID="txtsub" CssClass="form-control" placeholder="Subject"></asp:TextBox><br />
                    <asp:TextBox runat="server" ID="txtmsg" TextMode="MultiLine" Rows="4" CssClass="form-control" placeholder="Message"></asp:TextBox><br />
                    <asp:button runat="server" ID="btnsend" CssClass="btn btn-sm btn-success" Text="Send" OnClick="btnsend_Click" /><br />
                </div>
                <div class="col-sm-4">

                </div>
            </div>
        </div>
    </form>
</body>
</html>
