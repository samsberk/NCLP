<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Admin_Zone_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>NCLP Admin Home</title>
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
			text-align:center;
            font-family: muli;
			border:0.5px solid lightgray;
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
        </div>
        <%--<div class="container-fluid">
            <div class="login-panel">
                <h4>Print All Data :</h4>
                <div class="row">
                <div class="col-sm-2"><br /><a href="Form1_Data" target="_blank" class="btn btn-default">Form 1 Data</a></div>
                <div class="col-sm-2"><br /><a href="Form2_Data" target="_blank" class="btn btn-default">Form 2 Data</a></div>
                <div class="col-sm-2"><br /><a href="Form3_Data" target="_blank" class="btn btn-default">Form 3 Data</a></div>
                </div>
            </div>
        </div>--%>
        <div class="container-fluid" style="margin-top:10px;">
            <div class="login-panel" style="height:500px;overflow-y:auto;">
                <h4>Validate data for :</h4>
                <table border="1" style="width:100%;">
                    <tr><th>प्रपत्र</th><th>परिवार कोड</th><th>मुखिया</th><th>पता ( मकान नं, वार्ड नं, मोहल्ला, शहर, तहसील, जनपद )</th><th>बालक</th></tr>
                    <asp:PlaceHolder ID="vdplaceholder" runat="server"></asp:PlaceHolder>
                </table>
            </div>
        </div>
		<div class="container-fluid">
            <div class="login-panel">
                <h4>Print Table for :</h4><br />
				<ol style="margin-left:20px;">
					<li><a href="Print_This?Table_For=table1" target="_blank"> Distribution of Child Labor according to age from which started to work. <i class="fa fa-external-link-square"></i></a></li>
					<li><a href="Print_This?Table_For=table2" target="_blank"> Distribution according to the reason being in Job. <i class="fa fa-external-link-square"></i></a></li>
					<li><a href="Print_This?Table_For=table3" target="_blank"> Distribution of Child Labors according to wages. <i class="fa fa-external-link-square"></i></a></li>
					<li><a href="Print_This?Table_For=table4" target="_blank"> Distribution of Child Labor according to the type of work. <i class="fa fa-external-link-square"></i></a></li>
					<li><a href="Print_This?Table_For=table5" target="_blank"> Distribution of Child Labors according to the Cast. <i class="fa fa-external-link-square"></i></a></li>
					<li><a href="Print_This?Table_For=table6" target="_blank"> Distribution of Child Labors according to Religion. <i class="fa fa-external-link-square"></i></a></li>
					<li><a href="Print_This?Table_For=table7" target="_blank"> Distribution of Child Labors according to gender ward wise. <i class="fa fa-external-link-square"></i></a></li>
					<li><a href="Print_This?Table_For=table8" target="_blank"> Distribution of Child Labors according to Education. <i class="fa fa-external-link-square"></i></a></li>
					<li><a href="Print_This?Table_For=table9" target="_blank"> Distribution of Child Labors according to work hours. <i class="fa fa-external-link-square"></i></a></li>
					<li><a href="Print_This?Table_For=table10" target="_blank"> Distribution of families according to caste/class. <i class="fa fa-external-link-square"></i></a></li>
					<li><a href="Print_This?Table_For=table11" target="_blank"> Distribution of families according to religion. <i class="fa fa-external-link-square"></i></a></li>
					<li><a href="Print_This?Table_For=table12" target="_blank"> “Target Group” - under education. <i class="fa fa-external-link-square"></i></a></li>
					<li><a href="Print_This?Table_For=table13" target="_blank"> Distribution according to the work. <i class="fa fa-external-link-square"></i></a></li>
					<li><a href="Print_This?Table_For=table14" target="_blank"> Educational status of children below 14 years of age. <i class="fa fa-external-link-square"></i></a></li>
					<li><a href="Print_This?Table_For=table15" target="_blank"> Educational status of members below 14 years of age. <i class="fa fa-external-link-square"></i></a></li>
					<li><a href="Print_This?Table_For=table16" target="_blank"> Age wise number of members. <i class="fa fa-external-link-square"></i></a></li>
					<li><a href="Print_This?Table_For=table17" target="_blank"> Total List of Child. <i class="fa fa-external-link-square"></i></a></li>
					<li><a href="Print_This?Table_For=table18" target="_blank"> Total List of Child with Photo. <i class="fa fa-external-link-square"></i></a></li>
				</ol>
            </div>
        </div><hr />
        <div class="col-sm-5">
            <div class="login-panel">
                <p style="text-align:center;font-size:15px;font-family:muli;letter-spacing:2px;"><b>GENERATE SURVEYOR ID</b>&ensp;<span class="glyphicon glyphicon-user"></span></p><hr />
                <div class="input-group">
                    <span class="input-group-addon">Surveyor's Email ID</span>
                    <asp:TextBox runat="server" ID="emailtxt" TextMode="Email" MaxLength="50" placeholder="Surveyor's Email ID" CssClass="form-control txt" style="text-transform:lowercase;"></asp:TextBox>
                </div>
                <div class="input-group">
                    <span class="input-group-addon">Surveyor's Name</span>
                    <asp:TextBox runat="server" ID="nametxt" MaxLength="100" placeholder="Surveyor's Name" CssClass="form-control txt" style="text-transform:uppercase;"></asp:TextBox>
                </div>
                <div class="input-group">
                    <span class="input-group-addon">Surveyor's Contact (only 10 Digit)</span>
                    <asp:TextBox runat="server" ID="contacttxt" MaxLength="10" TextMode="Number" placeholder="Surveyor's Contact" CssClass="form-control txt"></asp:TextBox>
                </div>
                <div class="alert alert-warning"><b>NOTE : </b>Password will send to given email id.</div>
                <asp:Button runat="server" ID="genbtn" CssClass="btn btn-success" Text="GENERATE ID" style="font-weight:bold;" OnClick="genbtn_Click" /><br />
                
            </div>
        </div>
        <div class="col-sm-7" style="height:350px;overflow-y:auto;padding-top:10px;">
            <p style="text-align:center;font-size:15px;font-family:muli;letter-spacing:2px;"><b>SURVEYOR LIST</b>&ensp;<span class="glyphicon glyphicon-user"></span></p><hr />
            <a href="Admin_Home" style="font-family:muli;" class="click-on">Refresh List <span class="glyphicon glyphicon-refresh"></span></a>
            <table border="1" style="width:100%;">
				<tr><th>Navigate</th><th>Email ID</th><th>Name</th><th>Contact</th><th>Regd Date</th></tr>
				
				<asp:PlaceHolder runat="server" ID="slistph"></asp:PlaceHolder>
            </table>
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
        $("#nametxt").attr("disabled", true);
        $("#contacttxt").attr("disabled", true);
        $("#genbtn").attr("disabled", true);
        $("#lsbtn").attr("disabled", true);
        $("#delbtn").attr("disabled", true);
        $("#emailtxt").focus(function () {
            $("#nametxt").attr("disabled", false);
        });
        $("#lsemail").focus(function () {
            $("#lsname").attr("disabled", false);
        });
        $("#nametxt").focus(function () {
            $("#contacttxt").attr("disabled", false);
        });
        $("#lsname").focus(function () {
            $("#lsbtn").attr("disabled", false);
        });
        $("#contacttxt").focus(function () {
            $("#genbtn").attr("disabled", false);
        });
        $("#delmailtxt").focus(function () {
            $("#delbtn").attr("disabled", false);
        });
    </script>
</body>
</html>
