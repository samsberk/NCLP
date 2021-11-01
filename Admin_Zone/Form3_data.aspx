<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Form3_data.aspx.cs" Inherits="Admin_Zone_Form3_data" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>NCLP Form 3 Data</title>
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
    <script type="text/javascript">
        function prnt() {
            window.print();
		}
		function clos() {
            window.close();
        }
    </script>
    <style type="text/css">
        @media print {
    		.print {
    			display: none;
    		}
    	}
		*{
			font-family:muli;
		}
        td, th{
            padding: 2px 5px;
            font-size: 8px;
			text-align:center;
            font-family: muli;
			border:0.5px solid lightgray;
            user-select: none;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="panel-body text-center">
            <button type="button" class="btn btn-default print" onclick="prnt()" title="Print This Table" style="color:green;font-weight:bold;margin:0px 0px 20px 0px;"><i class="fa fa-print" style="font-size:25px;"></i></button>
            <table border="1" style="width:100%;">
                <tr><th>Sr.No.</th><th>Family</th><th>Surveyor Email</th><th>Submit Date</th><th>c1</th><th>c2</th><th>c3</th><th>c4</th><th>c5</th><th>c6</th><th>c7</th><th>c</th><th>c</th><th>c</th><th>c</th><th>c</th><th>c</th><th>c</th><th>c</th><th>c</th><th>c</th><th>c</th><th>c</th><th>c</th><th>c</th><th>c</th><th>c</th><th>c</th><th>c</th><th>c</th><th>c</th><th>c</th><th>c</th><th>c</th><th>c</th><th>c</th><th>c</th><th>c</th><th>c</th><th>c</th><th>c</th><th>c</th><th>c</th><th>c</th><th>c</th><th>c</th><th>c</th><th>c</th><th>c</th><th>c</th><th>c</th><th>c</th><th>c</th><th>c</th><th>c</th><th>c</th><th>c</th><th>c</th><th>c</th><th>c</th><th>c</th><th>c</th><th>c</th></tr>
                <asp:PlaceHolder runat="server" ID="f3"></asp:PlaceHolder>
            </table>
        </div>
    </form>
</body>
</html>
