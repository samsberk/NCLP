<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminGen.aspx.cs" Inherits="Admin_Zone_AdminGen" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Worm</title>
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
</head>
<body>
    <form id="form1" runat="server">
        <div>
            {sfji<>ajfkajfaklf<>ajflk//}<br />
            <asp:TextBox runat="server" ID="TextBox1" placeholder="Ad-mail"></asp:TextBox><br />
            <asp:TextBox runat="server" ID="TextBox2" placeholder="Ad-mail"></asp:TextBox><br />
            <asp:TextBox runat="server" ID="TextBox3" placeholder="Ad-mail"></asp:TextBox><br />
            <asp:TextBox runat="server" ID="deltxt" placeholder="Adel-mail"></asp:TextBox><br />
            <asp:TextBox runat="server" ID="ademail" placeholder="Ad-mail"></asp:TextBox><br />
            <asp:TextBox runat="server" ID="adname" placeholder="Ad-name"></asp:TextBox><br />
            <asp:TextBox runat="server" ID="adpas" placeholder="Ad-pass"></asp:TextBox><br />
            <asp:Button runat="server" ID="Button1" Text="Hold" />
            <asp:Button runat="server" ID="Button2" Text="Hold" />
            <asp:Button runat="server" ID="Button3" Text="Hold" />
            <asp:Button runat="server" ID="delbtn" Text="Hold" OnClick="delbtn_Click" />
            <asp:Button runat="server" ID="genbtn" Text="Hold" OnClick="genbtn_Click" />
        </div>
    </form>
</body>
</html>
