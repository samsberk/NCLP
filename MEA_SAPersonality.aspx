<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MEA_SAPersonality.aspx.cs" Inherits="MEA_SAPersonality" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Mobiles Enabled Applications - Self_Assessment of Personality | Mental Health Mission India</title>
    <meta name="theme-color" content="#0D355D" />
	<meta name="msApplication-navbutton-color" content="#0D355D" />
	<meta name="apple-mobile-web-app-status-bar-style" content="#0D355D" />
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="keywords" content="Mental health mission, mentalhealthmission, mental health mission.in, nclp survey, nclp login, nclp" />
	<meta charset="utf-8"/>
	<meta name="viewport" content="width=device-width, initial-scale=1"/>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
    <link href="CSS/MyCSS.css" rel="stylesheet" />
    <link href="CSS/MyCSS2.css" rel="stylesheet" />
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<link href="https://fonts.googleapis.com/css?family=Karma|Muli|Yantramanav" rel="stylesheet"/>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
    <script src="JS/MyJS.js"></script>
	<style>
		label {
			font-size: 14px;
			font-family: karma;
		}

		.input-group span {
			font-weight: bold;
		}

		.input-group {
			margin-bottom: 10px;
		}

		.main-nav {
			min-height: 10px;
			width: 100%;
			font-family: muli;
			padding: 0px 20px 0px 20px;
			text-align: center;
			background: rgba(1,43,85,0.95);
		}

			.main-nav .logo-mhm {
				font-size: 35px;
				text-decoration: none;
				user-select: none;
				font-weight:bold;
				color: forestgreen;
				transition: all 1s;
			}
				.main-nav .logo-mhm:hover {
					text-decoration: none;
					color: rgb(245, 155, 49);
					transition: all 1s;
				}
			.main-nav .logo-ppp {
				text-decoration: none;
				user-select: none;
				color: rgb(245, 155, 49);
				transition: all 1s;
			}
				.main-nav .logo-ppp:hover {
					text-decoration: none;
					color: forestgreen;
					transition: all 1s;
				}
				

		.prev-box {
			height: 150px;
			width: 100%;
			font-family: muli;
			border: 1px solid lightgray;
			letter-spacing: 1px;
			border-radius: 5px;
		}

			.prev-box img {
				width: 100%;
				height: 148px;
				border-radius: 5px;
				transition: all 1s;
			}

				.prev-box img:hover {
					transform: scale(1.5);
					transition: all 2s;
				}

			.prev-box:hover {
				box-shadow: 1px 5px 10px gray;
				transition: all 1s;
			}

		.title-bar {
			height: auto;
			width: 100%;
			padding: 2px 0px;
			letter-spacing: 2px;
			background: navy;
			font-size: 10px;
			font-family: muli;
			color: white;
			user-select: none;
		}

		.b-cover {
			position: relative;
			height: 100vh;
			width: 100%;
			background-image: url('Images/cover.jpg');
			background-attachment: fixed;
			background-position: center;
			background-size: cover;
		}

		.strap {
			min-height: 30px;
			background: rgba(247, 147, 30,0.9);
			padding-top:2px;
		}

		.front-box {
			min-height: 30vh;
			margin-top: 5vh;
			background: rgba(1,43,85,0.9);
		}

		.f-inner-box {
			min-height: 30vh;
			width: 100%;
			padding: 5px;
			border-radius: 3px;
			border: 2px solid rgb(245, 155, 49);
		}

		.f-i-row {
			min-height: 10px;
			width: 100%;
			padding: 3px;
			margin-bottom: 5px;
			border: 1px solid forestgreen;
			border-left: 5px solid rgb(245, 155, 49);
			background: rgba(250, 250, 250, 0.90);
			border-radius: 3px;
		}

			.f-i-row a {
				text-decoration: none;
				color: forestgreen;
				font-weight: bold;
				font-family: muli;
				font-size: 13px;
				letter-spacing: 1px;
				user-select: none;
				transition: all 1s;
			}

				.f-i-row a:hover {
					text-decoration: none;
					color: rgb(245, 155, 49);
					margin-left: 5px;
					transition: all .3s;
				}
		/*nav bar*/

		.my-nav {
			background: none;
			border: none;
			margin-top: 25px;
			border-radius: 5px;
		}

		
			.my-nav .my-collapse .my-navbar-nav li .link-b, .my-nav .my-collapse .navbar-right li .link-b {
				font-size: 12px;
				padding: 8px 9px 8px 12px;
				color: white;
				margin: 2px;
				letter-spacing: 2px;
			}

				.my-nav .my-collapse .my-navbar-nav li .link-b:hover, .my-nav .my-collapse .navbar-right li .link-b:hover {
					color: white;
					border-radius: 3px;
					background: forestgreen;
					letter-spacing: 2px;
					border-bottom: 5px solid white;
					transition: all .3s;
				}

			.my-nav .my-collapse .my-navbar-nav li.active .link-b {
				color: rgba(1,43,85,1);
				border-radius: 3px;
				background: rgb(245, 155, 49);
				font-weight: bold;
				letter-spacing: 2px;
				border-bottom: 5px solid white;
			}

				.my-nav .my-collapse .my-navbar-nav li.active .link-b:hover {
					color: white;
					border-radius: 3px;
					background: forestgreen;
					letter-spacing: 2px;
					border-bottom: 5px solid white;
					transition: all .3s;
				}
			.my-nav .navbar-header .my-toggle {
				color: #F59B31;
				padding:5px 8px;
				border: 0.5px solid #F59B31;
				border-radius:0px;
				background: none;
			}
				.my-nav .navbar-header .my-toggle:focus {
					color: #F59B31;
					background: forestgreen;
				}
		@media screen and (max-width:720px) {
			.my-nav .my-collapse {
				width:80vw;
				margin-left:-60vw;
				border-top: 2px solid #F59B31;
				margin-top: 20px;
			}

			.my-collapse, .navbar-right {
				background: rgba(1,43,85,1);
				border-radius: 3px;
			}

			.my-navbar-nav, .navbar-right {
				padding: 0px 10px 5px 10px;
			}

			.my-nav .my-collapse .my-navbar-nav li .link-b:hover, .my-nav .my-collapse .navbar-right li .link-b:hover {
				border: none;
				border-left: 5px solid white;
			}

			.my-nav .my-collapse .my-navbar-nav li.active .link-b:hover {
				border: none;
				border-left: 5px solid white;
			}

			.my-nav .my-collapse .my-navbar-nav li.active .link-b {
				border: none;
				border-left: 5px solid white;
			}
		}

		.go-top {
			position: fixed;
			bottom: 3%;
			right: 2%;
			display: none;
		}

			.go-top .gt-arrow {
				cursor: pointer;
				color: dimgray;
				font-size: 20px;
				padding: 7px;
				border: 1px solid dimgray;
			}

				.go-top .gt-arrow:hover {
					background: #F59B31;
					color: white;
				}
		/* Nav bar end*/
		.link {
			text-decoration: none;
			color: lightpink;
		}

			.link:focus {
				text-decoration: none;
				color: lightpink;
			}

			.link:hover {
				color: forestgreen;
				text-decoration: none;
			}

		.foot {
			min-height: 30px;
			width: 100%;
			font-family: muli;
			background: rgba(1,43,85,1);
			padding: 15px 0px;
			text-align: center;
			font-size: 13px;
			color: white;
			user-select: none;
		}
	</style>
</head>
<body style="background-image:url('Images/cover.jpg'); background-attachment:fixed; background-position:center; background-size:cover;">
    <form id="form1" runat="server">
        <div id="loader">
            <img src="Images/loading.gif" />
        </div>
        <div class="after-click">
            <img src="Images/loading.gif" />
        </div>
		<div style="min-height:100vh;">
			<div class="main-nav">
				<div class="row">
					<div class="col-sm-2 col-xs-8" style="padding-top:13px;">
						<a href="Home" class="logo-mhm click-on">MHM India</a><br />
						<div style="margin-top:-10px;"><a href="Home" class="logo-ppp click-on" style="font-size:14px;">Peace.Performance.Prosperity</a></div>
					</div>
					<div class="col-sm-10 col-xs-4">
						<nav class="navbar navbar-default my-nav">
							<div class="navbar-header">
								<button type="button" class="navbar-toggle my-toggle" data-toggle="collapse" data-target="#myNavbar2">
									<i class="fa fa-align-justify"></i>                        
								</button>
							</div>
							<div class="collapse navbar-collapse my-collapse" id="myNavbar2">
								<ul class="nav navbar-nav navbar-right my-navbar-nav">
									<li><a class="link-b click-on" href="Home">HOME</a></li>
									<li><a class="link-b" href="Photo_Gallary">GALLARY</a></li>
									<li><a class="link-b" href="Mental_Health_Centres">MH CENTRES</a></li>
									<li><a class="link-b" href="Training_Institutes">TRAINING INSTITUTES</a></li>
									<li><a class="link-b" href="Rehabilitation_Centres">REHABILITATION CENTRES</a></li>
									<li><a class="link-b" href="Contact_Us">CONTACT US</a></li>
								</ul>
								<!--<ul class="nav navbar-nav navbar-right">
									<li><a class="link-b click-on" href="Survey_Login"><span class="glyphicon glyphicon-log-in"></span>&ensp; NCLP LOGIN</a></li>
								</ul>-->
							</div>
						</nav>
					</div>
				</div>
			</div>
			<img src="Images/wip.png" style="height:150px;width:150px;margin-left:50vw;margin-top:40vh;transform:translate(-50%,-50%);"/>
		</div>
		<footer class="foot" style="margin-top:20px;">
			<a href="Disclaimer" class="link">Disclaimer</a>&ensp;|&ensp;<a href="Privacy_Policy" class="link">Privacy Policy</a><br />
            <span>&copy; at Mental Health Mission India 2019</span><br />
            <span>All Rights Reserved<br />Designed by : <a href="http://www.linkedin.com/in/samsberk" target="_blank" class="link">samsberk</a></span>
        </footer>
		<div class="go-top" title="To top">
			<span class="glyphicon glyphicon-arrow-up gt-arrow"></span>
		</div>
    </form>
	<script src="JS/FooterJS.js"></script>
</body>
</html>
