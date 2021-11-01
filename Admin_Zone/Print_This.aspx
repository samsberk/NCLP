<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Print_This.aspx.cs" Inherits="Admin_Zone_Print_This" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>NCLP Table</title>
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
		td, th {
            padding: 2px 5px;
            font-size: 12px;
			text-align:center;
            font-family: muli;
			border:0.5px solid lightgray;
        }
        p{
            font-size:14px;
            font-weight:bold;
        }
		.table-box{
			display:none;
		}
		#informer{
			display:none;
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
		<div class="panel-body text-center">

			<button type="button" class="btn btn-default print" onclick="prnt()" title="Print This Table" style="color:green;font-weight:bold;margin:20px 0px 20px 0px;"><i class="fa fa-print" style="font-size:25px;"></i></button>
			<button type="button" class="btn btn-default print" onclick="clos()" title="Close This Table" style="color:red;font-weight:bold;margin:20px 0px 20px 10px;"><i class="fa fa-close" style="font-size:25px;"></i></button>


			<div class="table-box" id="tb1">
				<p>Distribution of Child Labor according to age from which started to work.</p>
				<table border="1" style="width:100%;">
					<tr><th>Age/Years</th><th>Male</th><th>Female</th><th>Total</th></tr>
					<tr><td>6 to 7 Years</td><td><asp:Label runat="server" Text="0" ID="l111"></asp:Label></td><td><asp:Label runat="server" Text="0" ID="l112"></asp:Label></td><td><asp:Label runat="server" Text="0" ID="l113"></asp:Label></td></tr>
					<tr><td>8 to 9 Years</td><td><asp:Label runat="server" Text="0" ID="l121"></asp:Label></td><td><asp:Label runat="server" Text="0" ID="l122"></asp:Label></td><td><asp:Label runat="server" Text="0" ID="l123"></asp:Label></td></tr>
					<tr><td>10 to 11 Years</td><td><asp:Label runat="server" Text="0" ID="l131"></asp:Label></td><td><asp:Label runat="server" Text="0" ID="l132"></asp:Label></td><td><asp:Label runat="server" Text="0" ID="l133"></asp:Label></td></tr>
					<tr><td>12 to 13 Years</td><td><asp:Label runat="server" Text="0" ID="l141"></asp:Label></td><td><asp:Label runat="server" Text="0" ID="l142"></asp:Label></td><td><asp:Label runat="server" Text="0" ID="l143"></asp:Label></td></tr>
					<tr><td>14 Years</td><td><asp:Label runat="server" Text="0" ID="l151"></asp:Label></td><td><asp:Label runat="server" Text="0" ID="l152"></asp:Label></td><td><asp:Label runat="server" Text="0" ID="l153"></asp:Label></td></tr>
					<%--<tr><td>12 Years</td><td><asp:Label runat="server" Text="0" ID="l161"></asp:Label></td><td><asp:Label runat="server" Text="0" ID="l162"></asp:Label></td><td><asp:Label runat="server" Text="0" ID="l163"></asp:Label></td></tr>
					<tr><td>12 Years & Above</td><td><asp:Label runat="server" Text="0" ID="l171"></asp:Label></td><td><asp:Label runat="server" Text="0" ID="l172"></asp:Label></td><td><asp:Label runat="server" Text="0" ID="l173"></asp:Label></td></tr>--%>
				</table>
			</div>
			<div class="table-box" id="tb2">
				<p>Distribution according to the reason being in Job.</p>
				<table border="1" style="width:100%;">
					<tr><th>Reason</th><th>Male</th><th>Female</th><th>Total</th></tr>
					<tr><td>गरीबी या रूपयों की समस्या</td><td><asp:Label runat="server" Text="0" ID="l211"></asp:Label></td><td><asp:Label runat="server" Text="0" ID="l212"></asp:Label></td><td><asp:Label runat="server" Text="0" ID="l213"></asp:Label></td></tr>
					<tr><td>घर के माता पिता का एड्स से ग्रसित होना</td><td><asp:Label runat="server" Text="0" ID="l221"></asp:Label></td><td><asp:Label runat="server" Text="0" ID="l222"></asp:Label></td><td><asp:Label runat="server" Text="0" ID="l223"></asp:Label></td></tr>
					<tr><td>अपंगता</td><td><asp:Label runat="server" Text="0" ID="l231"></asp:Label></td><td><asp:Label runat="server" Text="0" ID="l232"></asp:Label></td><td><asp:Label runat="server" Text="0" ID="l233"></asp:Label></td></tr>
					<tr><td>कोई गम्भीर बीमारी</td><td><asp:Label runat="server" Text="0" ID="l241"></asp:Label></td><td><asp:Label runat="server" Text="0" ID="l242"></asp:Label></td><td><asp:Label runat="server" Text="0" ID="l243"></asp:Label></td></tr>
					<tr><td>माता पिता की मृत्यु</td><td><asp:Label runat="server" Text="0" ID="l251"></asp:Label></td><td><asp:Label runat="server" Text="0" ID="l252"></asp:Label></td><td><asp:Label runat="server" Text="0" ID="l253"></asp:Label></td></tr>
					<tr><td>माता पिता द्वारा छोड़ा जाना</td><td><asp:Label runat="server" Text="0" ID="l261"></asp:Label></td><td><asp:Label runat="server" Text="0" ID="l262"></asp:Label></td><td><asp:Label runat="server" Text="0" ID="l263"></asp:Label></td></tr>
					<tr><td>किसी के द्वारा बेचा जाना</td><td><asp:Label runat="server" Text="0" ID="l271"></asp:Label></td><td><asp:Label runat="server" Text="0" ID="l272"></asp:Label></td><td><asp:Label runat="server" Text="0" ID="l273"></asp:Label></td></tr>
					<tr><td>अन्य कोई</td><td><asp:Label runat="server" Text="0" ID="l281"></asp:Label></td><td><asp:Label runat="server" Text="0" ID="l282"></asp:Label></td><td><asp:Label runat="server" Text="0" ID="l283"></asp:Label></td></tr>
					
				</table>
			</div>
			<div class="table-box" id="tb3">
				<p>Distribution of Child Labors according to wages.</p>
				<table border="1" style="width:100%;">
					<tr><th>Wages</th><th>Male</th><th>Female</th><th>Total</th></tr>
					<tr><td>0-2000</td><td><asp:Label runat="server" Text="0" ID="l311"></asp:Label></td><td><asp:Label runat="server" Text="0" ID="l312"></asp:Label></td><td><asp:Label runat="server" Text="0" ID="l313"></asp:Label></td></tr>
					<tr><td>2000-4000</td><td><asp:Label runat="server" Text="0" ID="l321"></asp:Label></td><td><asp:Label runat="server" Text="0" ID="l322"></asp:Label></td><td><asp:Label runat="server" Text="0" ID="l323"></asp:Label></td></tr>
					<tr><td>4000-6000</td><td><asp:Label runat="server" Text="0" ID="l331"></asp:Label></td><td><asp:Label runat="server" Text="0" ID="l332"></asp:Label></td><td><asp:Label runat="server" Text="0" ID="l333"></asp:Label></td></tr>
					<tr><td>6000 & more</td><td><asp:Label runat="server" Text="0" ID="l341"></asp:Label></td><td><asp:Label runat="server" Text="0" ID="l342"></asp:Label></td><td><asp:Label runat="server" Text="0" ID="l343"></asp:Label></td></tr>
					
				</table>
			</div>
			<div class="table-box" id="tb4">
				<p>Distribution of Child Labor according to the type of work.</p>
				<table border="1" style="width:100%;">
					<tr><th>Type of work</th><th>Male</th><th>Female</th><th>Total</th></tr>
					<tr><td>स्वयं का व्यवसाय</td><td><asp:Label runat="server" Text="0" ID="l411"></asp:Label></td><td><asp:Label runat="server" Text="0" ID="l412"></asp:Label></td><td><asp:Label runat="server" Text="0" ID="l413"></asp:Label></td></tr>
					<tr><td>घरेलु व्यवसाय</td><td><asp:Label runat="server" Text="0" ID="l421"></asp:Label></td><td><asp:Label runat="server" Text="0" ID="l422"></asp:Label></td><td><asp:Label runat="server" Text="0" ID="l423"></asp:Label></td></tr>
					<tr><td>स्थाई दुकान</td><td><asp:Label runat="server" Text="0" ID="l431"></asp:Label></td><td><asp:Label runat="server" Text="0" ID="l432"></asp:Label></td><td><asp:Label runat="server" Text="0" ID="l433"></asp:Label></td></tr>
					<tr><td>औद्यौगिक प्रतिष्ठान</td><td><asp:Label runat="server" Text="0" ID="l441"></asp:Label></td><td><asp:Label runat="server" Text="0" ID="l442"></asp:Label></td><td><asp:Label runat="server" Text="0" ID="l443"></asp:Label></td></tr>
					<tr><td>दुकान</td><td><asp:Label runat="server" Text="0" ID="l451"></asp:Label></td><td><asp:Label runat="server" Text="0" ID="l452"></asp:Label></td><td><asp:Label runat="server" Text="0" ID="l453"></asp:Label></td></tr>
					<tr><td>घरेलु औद्यौगिक ईकाई</td><td><asp:Label runat="server" Text="0" ID="l461"></asp:Label></td><td><asp:Label runat="server" Text="0" ID="l462"></asp:Label></td><td><asp:Label runat="server" Text="0" ID="l463"></asp:Label></td></tr>
					<tr><td>कृषि कार्य</td><td><asp:Label runat="server" Text="0" ID="l471"></asp:Label></td><td><asp:Label runat="server" Text="0" ID="l472"></asp:Label></td><td><asp:Label runat="server" Text="0" ID="l473"></asp:Label></td></tr>
					<tr><td>घरेलु कार्य</td><td><asp:Label runat="server" Text="0" ID="l481"></asp:Label></td><td><asp:Label runat="server" Text="0" ID="l482"></asp:Label></td><td><asp:Label runat="server" Text="0" ID="l483"></asp:Label></td></tr>
					<tr><td>अन्य कोई</td><td><asp:Label runat="server" Text="0" ID="l491"></asp:Label></td><td><asp:Label runat="server" Text="0" ID="l492"></asp:Label></td><td><asp:Label runat="server" Text="0" ID="l493"></asp:Label></td></tr>
					
					</table>
			</div>
			<div class="table-box" id="tb5">
				<p>Distribution of Child Labors according to the Cast.</p>
				<table border="1" style="width:100%;">
					<tr><th>Cast</th><th>Male</th><th>Female</th><th>Total</th></tr>
					<tr><td>अनुसूचित जाति</td><td><asp:Label runat="server" Text="0" ID="l511"></asp:Label></td><td><asp:Label runat="server" Text="0" ID="l512"></asp:Label></td><td><asp:Label runat="server" Text="0" ID="l513"></asp:Label></td></tr>
					<tr><td>अनुसूचित जनजाति</td><td><asp:Label runat="server" Text="0" ID="l521"></asp:Label></td><td><asp:Label runat="server" Text="0" ID="l522"></asp:Label></td><td><asp:Label runat="server" Text="0" ID="l523"></asp:Label></td></tr>
					<tr><td>अन्य पिछड़ा वर्ग</td><td><asp:Label runat="server" Text="0" ID="l531"></asp:Label></td><td><asp:Label runat="server" Text="0" ID="l532"></asp:Label></td><td><asp:Label runat="server" Text="0" ID="l533"></asp:Label></td></tr>
					<tr><td>सामान्य</td><td><asp:Label runat="server" Text="0" ID="l541"></asp:Label></td><td><asp:Label runat="server" Text="0" ID="l542"></asp:Label></td><td><asp:Label runat="server" Text="0" ID="l543"></asp:Label></td></tr>
					<tr><td>अल्पसंख्यक</td><td><asp:Label runat="server" Text="0" ID="l551"></asp:Label></td><td><asp:Label runat="server" Text="0" ID="l552"></asp:Label></td><td><asp:Label runat="server" Text="0" ID="l553"></asp:Label></td></tr>
					</table>
			</div>
			<div class="table-box" id="tb6">
				<p>Distribution of Child Labors according to Religion.</p>
				<table border="1" style="width:100%;">
					<tr><th>Religion</th><th>Male</th><th>Female</th><th>Total</th></tr>
					<tr><td>Hindu</td><td><asp:Label runat="server" Text="0" ID="l611"></asp:Label></td><td><asp:Label runat="server" Text="0" ID="l612"></asp:Label></td><td><asp:Label runat="server" Text="0" ID="l613"></asp:Label></td></tr>
					<tr><td>Muslim</td><td><asp:Label runat="server" Text="0" ID="l621"></asp:Label></td><td><asp:Label runat="server" Text="0" ID="l622"></asp:Label></td><td><asp:Label runat="server" Text="0" ID="l623"></asp:Label></td></tr>
					<tr><td>Sikh</td><td><asp:Label runat="server" Text="0" ID="l631"></asp:Label></td><td><asp:Label runat="server" Text="0" ID="l632"></asp:Label></td><td><asp:Label runat="server" Text="0" ID="l633"></asp:Label></td></tr>
					<tr><td>Christian</td><td><asp:Label runat="server" Text="0" ID="l641"></asp:Label></td><td><asp:Label runat="server" Text="0" ID="l642"></asp:Label></td><td><asp:Label runat="server" Text="0" ID="l643"></asp:Label></td></tr>
					<tr><td>Buddhism</td><td><asp:Label runat="server" Text="0" ID="l651"></asp:Label></td><td><asp:Label runat="server" Text="0" ID="l652"></asp:Label></td><td><asp:Label runat="server" Text="0" ID="l653"></asp:Label></td></tr>
					<tr><td>Jain</td><td><asp:Label runat="server" Text="0" ID="l661"></asp:Label></td><td><asp:Label runat="server" Text="0" ID="l662"></asp:Label></td><td><asp:Label runat="server" Text="0" ID="l663"></asp:Label></td></tr>
					<tr><td>Others</td><td><asp:Label runat="server" Text="0" ID="l671"></asp:Label></td><td><asp:Label runat="server" Text="0" ID="l672"></asp:Label></td><td><asp:Label runat="server" Text="0" ID="l673"></asp:Label></td></tr>
				</table>
			</div>
			<div class="table-box" id="tb7">
				<p>Distribution of Child Labors according to gender ward wise.</p>
				<table border="1" style="width:100%;">
					<tr><th>Ward No.</th><th>Male</th><th>Female</th><th>Total</th></tr>
					<tr><td>1</td><td><asp:Label runat="server" Text="0" ID="l711"></asp:Label></td><td><asp:Label runat="server" Text="0" ID="l712"></asp:Label></td><td><asp:Label runat="server" Text="0" ID="l713"></asp:Label></td></tr>
					<tr><td>2</td><td><asp:Label runat="server" Text="0" ID="l721"></asp:Label></td><td><asp:Label runat="server" Text="0" ID="l722"></asp:Label></td><td><asp:Label runat="server" Text="0" ID="l723"></asp:Label></td></tr>
					<tr><td>3</td><td><asp:Label runat="server" Text="0" ID="l731"></asp:Label></td><td><asp:Label runat="server" Text="0" ID="l732"></asp:Label></td><td><asp:Label runat="server" Text="0" ID="l733"></asp:Label></td></tr>
					<tr><td>4</td><td><asp:Label runat="server" Text="0" ID="l741"></asp:Label></td><td><asp:Label runat="server" Text="0" ID="l742"></asp:Label></td><td><asp:Label runat="server" Text="0" ID="l743"></asp:Label></td></tr>
					<tr><td>5</td><td><asp:Label runat="server" Text="0" ID="l751"></asp:Label></td><td><asp:Label runat="server" Text="0" ID="l752"></asp:Label></td><td><asp:Label runat="server" Text="0" ID="l753"></asp:Label></td></tr>
					<tr><td>6</td><td><asp:Label runat="server" Text="0" ID="l761"></asp:Label></td><td><asp:Label runat="server" Text="0" ID="l762"></asp:Label></td><td><asp:Label runat="server" Text="0" ID="l763"></asp:Label></td></tr>
					<tr><td>7</td><td><asp:Label runat="server" Text="0" ID="l771"></asp:Label></td><td><asp:Label runat="server" Text="0" ID="l772"></asp:Label></td><td><asp:Label runat="server" Text="0" ID="l773"></asp:Label></td></tr>
					<tr><td>8</td><td><asp:Label runat="server" Text="0" ID="l781"></asp:Label></td><td><asp:Label runat="server" Text="0" ID="l782"></asp:Label></td><td><asp:Label runat="server" Text="0" ID="l783"></asp:Label></td></tr>
					<tr><td>9</td><td><asp:Label runat="server" Text="0" ID="l791"></asp:Label></td><td><asp:Label runat="server" Text="0" ID="l792"></asp:Label></td><td><asp:Label runat="server" Text="0" ID="l793"></asp:Label></td></tr>
					<tr><td>10</td><td><asp:Label runat="server" Text="0" ID="l7101"></asp:Label></td><td><asp:Label runat="server" Text="0" ID="l7102"></asp:Label></td><td><asp:Label runat="server" Text="0" ID="l7103"></asp:Label></td></tr>
					<tr><td>11</td><td><asp:Label runat="server" Text="0" ID="l7111"></asp:Label></td><td><asp:Label runat="server" Text="0" ID="l7112"></asp:Label></td><td><asp:Label runat="server" Text="0" ID="l7113"></asp:Label></td></tr>
					<tr><td>12</td><td><asp:Label runat="server" Text="0" ID="l7121"></asp:Label></td><td><asp:Label runat="server" Text="0" ID="l7122"></asp:Label></td><td><asp:Label runat="server" Text="0" ID="l7123"></asp:Label></td></tr>
					<tr><td>13</td><td><asp:Label runat="server" Text="0" ID="l7131"></asp:Label></td><td><asp:Label runat="server" Text="0" ID="l7132"></asp:Label></td><td><asp:Label runat="server" Text="0" ID="l7133"></asp:Label></td></tr>
					<tr><td>14</td><td><asp:Label runat="server" Text="0" ID="l7141"></asp:Label></td><td><asp:Label runat="server" Text="0" ID="l7142"></asp:Label></td><td><asp:Label runat="server" Text="0" ID="l7143"></asp:Label></td></tr>
					<tr><td>15</td><td><asp:Label runat="server" Text="0" ID="l7151"></asp:Label></td><td><asp:Label runat="server" Text="0" ID="l7152"></asp:Label></td><td><asp:Label runat="server" Text="0" ID="l7153"></asp:Label></td></tr>
					<tr><td>16</td><td><asp:Label runat="server" Text="0" ID="l7161"></asp:Label></td><td><asp:Label runat="server" Text="0" ID="l7162"></asp:Label></td><td><asp:Label runat="server" Text="0" ID="l7163"></asp:Label></td></tr>
					<tr><td>17</td><td><asp:Label runat="server" Text="0" ID="l7171"></asp:Label></td><td><asp:Label runat="server" Text="0" ID="l7172"></asp:Label></td><td><asp:Label runat="server" Text="0" ID="l7173"></asp:Label></td></tr>
					<tr><td>18</td><td><asp:Label runat="server" Text="0" ID="l7181"></asp:Label></td><td><asp:Label runat="server" Text="0" ID="l7182"></asp:Label></td><td><asp:Label runat="server" Text="0" ID="l7183"></asp:Label></td></tr>
					<tr><td>19</td><td><asp:Label runat="server" Text="0" ID="l7191"></asp:Label></td><td><asp:Label runat="server" Text="0" ID="l7192"></asp:Label></td><td><asp:Label runat="server" Text="0" ID="l7193"></asp:Label></td></tr>
					<tr><td>20</td><td><asp:Label runat="server" Text="0" ID="l7201"></asp:Label></td><td><asp:Label runat="server" Text="0" ID="l7202"></asp:Label></td><td><asp:Label runat="server" Text="0" ID="l7203"></asp:Label></td></tr>
					<tr><td>21</td><td><asp:Label runat="server" Text="0" ID="l7211"></asp:Label></td><td><asp:Label runat="server" Text="0" ID="l7212"></asp:Label></td><td><asp:Label runat="server" Text="0" ID="l7213"></asp:Label></td></tr>
					<tr><td>22</td><td><asp:Label runat="server" Text="0" ID="l7221"></asp:Label></td><td><asp:Label runat="server" Text="0" ID="l7222"></asp:Label></td><td><asp:Label runat="server" Text="0" ID="l7223"></asp:Label></td></tr>
					<tr><td>23</td><td><asp:Label runat="server" Text="0" ID="l7231"></asp:Label></td><td><asp:Label runat="server" Text="0" ID="l7232"></asp:Label></td><td><asp:Label runat="server" Text="0" ID="l7233"></asp:Label></td></tr>
					<tr><td>24</td><td><asp:Label runat="server" Text="0" ID="l7241"></asp:Label></td><td><asp:Label runat="server" Text="0" ID="l7242"></asp:Label></td><td><asp:Label runat="server" Text="0" ID="l7243"></asp:Label></td></tr>
					<tr><td>25</td><td><asp:Label runat="server" Text="0" ID="l7251"></asp:Label></td><td><asp:Label runat="server" Text="0" ID="l7252"></asp:Label></td><td><asp:Label runat="server" Text="0" ID="l7253"></asp:Label></td></tr>
					<tr><td>26</td><td><asp:Label runat="server" Text="0" ID="l7261"></asp:Label></td><td><asp:Label runat="server" Text="0" ID="l7262"></asp:Label></td><td><asp:Label runat="server" Text="0" ID="l7263"></asp:Label></td></tr>
					<tr><td>27</td><td><asp:Label runat="server" Text="0" ID="l7271"></asp:Label></td><td><asp:Label runat="server" Text="0" ID="l7272"></asp:Label></td><td><asp:Label runat="server" Text="0" ID="l7273"></asp:Label></td></tr>
					<%--<tr><td>28</td><td><asp:Label runat="server" Text="0" ID="l7281"></asp:Label></td><td><asp:Label runat="server" Text="0" ID="l7282"></asp:Label></td><td><asp:Label runat="server" Text="0" ID="l7283"></asp:Label></td></tr>
					<tr><td>29</td><td><asp:Label runat="server" Text="0" ID="l7291"></asp:Label></td><td><asp:Label runat="server" Text="0" ID="l7292"></asp:Label></td><td><asp:Label runat="server" Text="0" ID="l7293"></asp:Label></td></tr>
					<tr><td>30</td><td><asp:Label runat="server" Text="0" ID="l7301"></asp:Label></td><td><asp:Label runat="server" Text="0" ID="l7302"></asp:Label></td><td><asp:Label runat="server" Text="0" ID="l7303"></asp:Label></td></tr>
					<tr><td>31</td><td><asp:Label runat="server" Text="0" ID="l7311"></asp:Label></td><td><asp:Label runat="server" Text="0" ID="l7312"></asp:Label></td><td><asp:Label runat="server" Text="0" ID="l7313"></asp:Label></td></tr>
					<tr><td>32</td><td><asp:Label runat="server" Text="0" ID="l7321"></asp:Label></td><td><asp:Label runat="server" Text="0" ID="l7322"></asp:Label></td><td><asp:Label runat="server" Text="0" ID="l7323"></asp:Label></td></tr>
					<tr><td>33</td><td><asp:Label runat="server" Text="0" ID="l7331"></asp:Label></td><td><asp:Label runat="server" Text="0" ID="l7332"></asp:Label></td><td><asp:Label runat="server" Text="0" ID="l7333"></asp:Label></td></tr>
					<tr><td>34</td><td><asp:Label runat="server" Text="0" ID="l7341"></asp:Label></td><td><asp:Label runat="server" Text="0" ID="l7342"></asp:Label></td><td><asp:Label runat="server" Text="0" ID="l7343"></asp:Label></td></tr>
					<tr><td>35</td><td><asp:Label runat="server" Text="0" ID="l7351"></asp:Label></td><td><asp:Label runat="server" Text="0" ID="l7352"></asp:Label></td><td><asp:Label runat="server" Text="0" ID="l7353"></asp:Label></td></tr>
					<tr><td>36</td><td><asp:Label runat="server" Text="0" ID="l7361"></asp:Label></td><td><asp:Label runat="server" Text="0" ID="l7362"></asp:Label></td><td><asp:Label runat="server" Text="0" ID="l7363"></asp:Label></td></tr>
					<tr><td>37</td><td><asp:Label runat="server" Text="0" ID="l7371"></asp:Label></td><td><asp:Label runat="server" Text="0" ID="l7372"></asp:Label></td><td><asp:Label runat="server" Text="0" ID="l7373"></asp:Label></td></tr>
					<tr><td>38</td><td><asp:Label runat="server" Text="0" ID="l7381"></asp:Label></td><td><asp:Label runat="server" Text="0" ID="l7382"></asp:Label></td><td><asp:Label runat="server" Text="0" ID="l7383"></asp:Label></td></tr>
					<tr><td>39</td><td><asp:Label runat="server" Text="0" ID="l7391"></asp:Label></td><td><asp:Label runat="server" Text="0" ID="l7392"></asp:Label></td><td><asp:Label runat="server" Text="0" ID="l7393"></asp:Label></td></tr>	--%>
					
				</table>
			</div>
			<div class="table-box" id="tb8">
				<p>Distribution of Child Labors according to Education.</p>
				<table border="1" style="width:100%;">
					<tr><th>Education</th><th>Male</th><th>Female</th><th>Total</th></tr>
					<tr><td>Educated</td><td><asp:Label runat="server" Text="0" ID="l811"></asp:Label></td><td><asp:Label runat="server" Text="0" ID="l812"></asp:Label></td><td><asp:Label runat="server" Text="0" ID="l813"></asp:Label></td></tr>
					<tr><td>Joined school & left (from which class)</td><td><asp:Label runat="server" Text="0" ID="l821"></asp:Label></td><td><asp:Label runat="server" Text="0" ID="l822"></asp:Label></td><td><asp:Label runat="server" Text="0" ID="l823"></asp:Label></td></tr>
					<tr><td>Still in school (Registered)</td><td><asp:Label runat="server" Text="0" ID="l831"></asp:Label></td><td><asp:Label runat="server" Text="0" ID="l832"></asp:Label></td><td><asp:Label runat="server" Text="0" ID="l833"></asp:Label></td></tr>
					<tr><td>Never gone to school</td><td><asp:Label runat="server" Text="0" ID="l841"></asp:Label></td><td><asp:Label runat="server" Text="0" ID="l842"></asp:Label></td><td><asp:Label runat="server" Text="0" ID="l843"></asp:Label></td></tr>
					
				</table>
			</div>
			<div class="table-box" id="tb9">
				<p>Distribution of Child Labors according to work hours.</p>
				<table border="1" style="width:100%;">
					<tr><th>Work Hours</th><th>Male</th><th>Female</th><th>Total</th></tr>
					<tr><td>1-2 hr</td><td><asp:Label runat="server" Text="0" ID="l911"></asp:Label></td><td><asp:Label runat="server" Text="0" ID="l912"></asp:Label></td><td><asp:Label runat="server" Text="0" ID="l913"></asp:Label></td></tr>
					<tr><td>3-4 hr</td><td><asp:Label runat="server" Text="0" ID="l921"></asp:Label></td><td><asp:Label runat="server" Text="0" ID="l922"></asp:Label></td><td><asp:Label runat="server" Text="0" ID="l923"></asp:Label></td></tr>
					<tr><td>5-6 hr</td><td><asp:Label runat="server" Text="0" ID="l931"></asp:Label></td><td><asp:Label runat="server" Text="0" ID="l932"></asp:Label></td><td><asp:Label runat="server" Text="0" ID="l933"></asp:Label></td></tr>
					<tr><td>7 & above</td><td><asp:Label runat="server" Text="0" ID="l941"></asp:Label></td><td><asp:Label runat="server" Text="0" ID="l942"></asp:Label></td><td><asp:Label runat="server" Text="0" ID="l943"></asp:Label></td></tr>
				</table>
			</div>
			<div class="table-box" id="tb10">
				<p>Distribution of families according to caste/class.</p>
				<table border="1" style="width:100%;">
					<tr><th>Caste/Class</th><th>No. of families</th><th>%</th></tr>
					<tr><td>SC</td><td><asp:Label runat="server" Text="0" ID="l1011"></asp:Label></td><td><asp:Label runat="server" Text="0" ID="l1012"></asp:Label></td></tr>
					<tr><td>ST</td><td><asp:Label runat="server" Text="0" ID="l1021"></asp:Label></td><td><asp:Label runat="server" Text="0" ID="l1022"></asp:Label></td></tr>
					<tr><td>OBC</td><td><asp:Label runat="server" Text="0" ID="l1031"></asp:Label></td><td><asp:Label runat="server" Text="0" ID="l1032"></asp:Label></td></tr>
					<tr><td>General</td><td><asp:Label runat="server" Text="0" ID="l1041"></asp:Label></td><td><asp:Label runat="server" Text="0" ID="l1042"></asp:Label></td></tr>
					<tr><td>Minority</td><td><asp:Label runat="server" Text="0" ID="l1051"></asp:Label></td><td><asp:Label runat="server" Text="0" ID="l1052"></asp:Label></td></tr>
					
				</table>
			</div>
			<div class="table-box" id="tb11">
				<p>Distribution of families according to religion.</p>
				<table border="1" style="width:100%;">
					<tr><th>Religion</th><th>No. of families</th><th>%</th></tr>
					<tr><td>Hindu</td><td><asp:Label runat="server" Text="0" ID="l1111"></asp:Label></td><td><asp:Label runat="server" Text="0" ID="l1112"></asp:Label></td></tr>
					<tr><td>Muslim</td><td><asp:Label runat="server" Text="0" ID="l1121"></asp:Label></td><td><asp:Label runat="server" Text="0" ID="l1122"></asp:Label></td></tr>
					<tr><td>Christian</td><td><asp:Label runat="server" Text="0" ID="l1131"></asp:Label></td><td><asp:Label runat="server" Text="0" ID="l1132"></asp:Label></td></tr>
					<tr><td>Sikh</td><td><asp:Label runat="server" Text="0" ID="l1141"></asp:Label></td><td><asp:Label runat="server" Text="0" ID="l1142"></asp:Label></td></tr>
					<tr><td>Buddhism</td><td><asp:Label runat="server" Text="0" ID="l1151"></asp:Label></td><td><asp:Label runat="server" Text="0" ID="l1152"></asp:Label></td></tr>
					<tr><td>Jain</td><td><asp:Label runat="server" Text="0" ID="l1161"></asp:Label></td><td><asp:Label runat="server" Text="0" ID="l1162"></asp:Label></td></tr>
					<tr><td>Others</td><td><asp:Label runat="server" Text="0" ID="l1171"></asp:Label></td><td><asp:Label runat="server" Text="0" ID="l1172"></asp:Label></td></tr>
				</table>
			</div>
			<div class="table-box" id="tb12">
				<p>“Target Group”- under education.</p>
				<table border="1" style="width:100%;">
					<tr><th></th><th>Male</th><th>Female</th></tr>
					<tr><td>Working Children</td><td><asp:Label runat="server" Text="0" ID="l1211"></asp:Label></td><td><asp:Label runat="server" Text="0" ID="l1212"></asp:Label></td></tr>
					<tr><td>Non-working Children</td><td><asp:Label runat="server" Text="0" ID="l1221"></asp:Label></td><td><asp:Label runat="server" Text="0" ID="l1222"></asp:Label></td></tr>
				</table>
			</div>
			<div class="table-box" id="tb13">
				<p>Distribution according to the work.</p>
				<table border="1" style="width:100%;">
					<tr><th></th><th>Male</th><th>Female</th></tr>
					<tr><td>Working Children</td><td><asp:Label runat="server" Text="0" ID="l1311"></asp:Label></td><td><asp:Label runat="server" Text="0" ID="l1312"></asp:Label></td></tr>
					<tr><td>Non-working Children</td><td><asp:Label runat="server" Text="0" ID="l1321"></asp:Label></td><td><asp:Label runat="server" Text="0" ID="l1322"></asp:Label></td></tr>
				</table>
			</div>
			<div class="table-box" id="tb14">
				<p>Educational status of children below 14 years of age.</p>
				<table border="1" style="width:100%;">
					<tr><th>Age Group</th><th>Instructor</th><th>Out of education</th></tr>
					<tr><td>0-5</td><td><asp:Label runat="server" Text="0" ID="l1411"></asp:Label></td><td><asp:Label runat="server" Text="0" ID="l1412"></asp:Label></td></tr>
					<tr><td>6-10</td><td><asp:Label runat="server" Text="0" ID="l1421"></asp:Label></td><td><asp:Label runat="server" Text="0" ID="l1422"></asp:Label></td></tr>
					<tr><td>11-14</td><td><asp:Label runat="server" Text="0" ID="l1431"></asp:Label></td><td><asp:Label runat="server" Text="0" ID="l1432"></asp:Label></td></tr>
				</table>
			</div>
			<div class="table-box" id="tb15">
				<p>Educational status of members below 14 years of age.</p>
				<table border="1" style="width:100%;">
					<tr><th></th><th>Literate</th><th>Illiterate</th></tr>
					<tr><td>Male</td><td><asp:Label runat="server" Text="0" ID="l1511"></asp:Label></td><td><asp:Label runat="server" Text="0" ID="l1512"></asp:Label></td></tr>
					<tr><td>Female</td><td><asp:Label runat="server" Text="0" ID="l1521"></asp:Label></td><td><asp:Label runat="server" Text="0" ID="l1522"></asp:Label></td></tr>
				</table>
			</div>
			<div class="table-box" id="tb16">
				<p>Age wise number of members.</p>
				<table border="1" style="width:100%;">
					<tr><th>Age/Years</th><th>Male</th><th>Female</th></tr>
					<tr><td>6 to 8 Years</td><td><asp:Label runat="server" Text="0" ID="l1611"></asp:Label></td><td><asp:Label runat="server" Text="0" ID="l1612"></asp:Label></td></tr>
					<tr><td>9 to 11 Years</td><td><asp:Label runat="server" Text="0" ID="l1621"></asp:Label></td><td><asp:Label runat="server" Text="0" ID="l1622"></asp:Label></td></tr>
					<tr><td>12 to 15 Years</td><td><asp:Label runat="server" Text="0" ID="l1631"></asp:Label></td><td><asp:Label runat="server" Text="0" ID="l1632"></asp:Label></td></tr>
				</table>
			</div>
            <div class="table-box" id="tb17">
				<p>Total List of Child.</p>
				<table border="1" style="width:100%;">
					<tr><th>Sr.No.</th><th>Name</th><th>Father's Name</th><th>Address ( H.No, Ward No, Mohalla, Shahar, Tahseel, Janpad )</th><th>Age</th><th>Religion</th><th>Cast</th><th>Gender</th></tr>
                    <asp:PlaceHolder runat="server" ID="pht17"></asp:PlaceHolder>
				</table>
			</div>
            <div class="table-box" id="tb18">
				<p>Total List of Child with Photo.</p>
				<table border="1" style="width:100%;">
					<tr><th>Sr.No.</th><th>F.Code</th><th>Name</th><th>Father's Name</th><th>Address ( H.No, Ward No, Mohalla, Shahar, Tahseel, Janpad )</th><th>Age</th><th>Religion</th><th>Cast</th><th>Gender</th><th>Photo</th></tr>
                    <asp:PlaceHolder runat="server" ID="pht18"></asp:PlaceHolder>
				</table>
			</div>
            
		</div>
		<asp:Label runat="server" ID="informer">dasda</asp:Label>
    </form>
	<script>
        $(".click-on").click(function () {
            $(".after-click").fadeIn();
        });
        var loader = document.getElementById("loader");
        window.addEventListener("load", function () {
            $("#loader").fadeOut("slow");
		});

		if ($("#informer").text() == "table1")
			$("#tb1").show();
		else if ($("#informer").text() == "table2")
			$("#tb2").show();
		else if ($("#informer").text() == "table3")
			$("#tb3").show();
		else if ($("#informer").text() == "table4")
			$("#tb4").show();
		else if ($("#informer").text() == "table5")
			$("#tb5").show();
		else if ($("#informer").text() == "table6")
			$("#tb6").show();
		else if ($("#informer").text() == "table7")
			$("#tb7").show();
		else if ($("#informer").text() == "table8")
			$("#tb8").show();
		else if ($("#informer").text() == "table9")
			$("#tb9").show();
		else if ($("#informer").text() == "table10")
			$("#tb10").show();
		else if ($("#informer").text() == "table11")
			$("#tb11").show();
		else if ($("#informer").text() == "table12")
			$("#tb12").show();
		else if ($("#informer").text() == "table13")
			$("#tb13").show();
		else if ($("#informer").text() == "table14")
			$("#tb14").show();
		else if ($("#informer").text() == "table15")
			$("#tb15").show();
		else if ($("#informer").text() == "table16")
			$("#tb16").show();
		else if ($("#informer").text() == "table17")
			$("#tb17").show();
		else if ($("#informer").text() == "table18")
			$("#tb18").show();
		
    </script>
</body>
</html>
