<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Home</title>
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
                                <li class="active"><a class="link-b click-on" href="Home">HOME</a></li>
                                <li><a class="link-b click-on" href="Photo_Gallary">GALLARY</a></li>
                                <li><a class="link-b click-on" href="Mental_Health_Centres">MH CENTRES</a></li>
                                <li><a class="link-b click-on" href="Training_Institutes">TRAINING INSTITUTES</a></li>
                                <li><a class="link-b click-on" href="Rehabilitation_Centres">REHABILITATION CENTRES</a></li>
                                <li><a class="link-b click-on" href="Contact_Us">CONTACT US</a></li>
								<li><a class="link-b click-on" href="Survey_Login"><span class="glyphicon glyphicon-log-in"></span> NCLP LOGIN</a></li>
                            </ul>
                        </div>
                    </nav>
                </div>
            </div>
        </div>
        <div class="strap">
            <div class="col-md-1 col-xs-2 text-center" style="padding-left:5px;">
                <span style="color:forestgreen;font-family:muli;font-weight:bold;font-size:14px;user-select:none;">MISSION</span>
            </div>
            <div class="col-md-11 col-xs-10" style="font-family:muli;font-size:14px;color:white;user-select:none;padding-top:3px;">
                <marquee scrollamount="4" onmouseover="stop()" onmouseout="start()">To see every Indian mentally healthy, professionally facilitated and psychologically enabled to generate peace, performance and prosperity for self, society and country.</marquee>
            </div>
        </div>
        <div class="strap" style="background:forestgreen;">
            <div class="col-md-1 col-xs-2 text-center" style="padding-left:5px;">
                <span style="color:rgb(245, 155, 49);font-family:muli;font-weight:bold;font-size:14px;user-select:none;">VISION</span>
            </div>
            <div class="col-md-11 col-xs-10" style="font-family:muli;font-size:14px;color:white;user-select:none;padding-top:3px;">
                <marquee scrollamount="4" onmouseover="stop()" onmouseout="start()">To educate, motivate and aware people globally for blessed mental health and efforts to establish ‘Mental Health Council of India’ by Indian Government.</marquee>
            </div>
        </div>

            
            <div class="front-box panel-body">
                <div class="row">
                    <div class="col-md-6" style="padding:0px 5px;">
                        <div class="f-inner-box">
                            <div style=" padding:5px;background-image:url('Images/cover.jpg');background-size:cover;">
                                <div class="f-i-row">
                                    <a href="#About"><span class="glyphicon glyphicon-chevron-right"></span> About MHM India</a>
                                </div>
                                <div class="f-i-row">
                                    <a href="Why_Mental_Health_Council_of_India"><span class="glyphicon glyphicon-chevron-right"></span> Why Mental Health Council of India</a>
                                </div>
                                <div class="f-i-row">
                                    <a href="Mental_Health_Awareness_Camps"><span class="glyphicon glyphicon-chevron-right"></span> Mental Health Awareness Camps</a>
                                </div>
                                <div class="f-i-row">
                                    <a id="westxt" style="cursor:pointer;"><span class="glyphicon glyphicon-chevron-right"></span> Web Enabled Services</a>
									<div id="wesdd" style="margin-top:8px;">
										&emsp;<a href="WES_Tele_Counselling"><span class="glyphicon glyphicon-chevron-right"></span> Tele-counselling</a><br />
										&emsp;<a href="WES_Video_Conferencing"><span class="glyphicon glyphicon-chevron-right"></span> Video conferencing</a><br />
										&emsp;<a href="WES_Email_Messages_Services"><span class="glyphicon glyphicon-chevron-right"></span> E-mails/Messages Services</a><br />
									</div>
                                </div>
								<div class="f-i-row">
                                    <a href="Interactive_Psychologists_Panel"><span class="glyphicon glyphicon-chevron-right"></span> Interactive Psychologists Panel</a>
                                </div>
								<div class="f-i-row">
                                    <a href="Virtual_Reality_Techniques"><span class="glyphicon glyphicon-chevron-right"></span> Virtual Reality Techniques</a>
                                </div>
								<div class="f-i-row">
                                    <a href="Computer_Based_Self_Instructional_Programmes"><span class="glyphicon glyphicon-chevron-right"></span> Computer Based Self Instructional Programmes</a>
                                </div>
								<div class="f-i-row" style="margin-bottom:0px;">
                                    <a id="meatxt" style="cursor:pointer;"><span class="glyphicon glyphicon-chevron-right"></span> Mobiles Enabled Applications</a>
									<div id="meadd" style="margin-top:8px;">
										&emsp;<a href="MEA_Psycho_Diagnoses"><span class="glyphicon glyphicon-chevron-right"></span> Psycho-diagnoses</a><br />
										&emsp;<a href="MEA_Self_Assessment_of_personality"><span class="glyphicon glyphicon-chevron-right"></span> Self-Assessment of personality</a><br />
										&emsp;<a href="MEA_Intelligence_and_Aptitude"><span class="glyphicon glyphicon-chevron-right"></span> Intelligence and Aptitude</a><br />
										&emsp;<a href="MEA_Personal_or_Couple_Relationship_Management_System"><span class="glyphicon glyphicon-chevron-right"></span> Personal/Couple Relationship Management System</a><br />
									</div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6" style="padding:0px 5px;">
						<div class="f-inner-box">
                            <div style=" padding:5px;background-image:url('Images/cover.jpg');background-size:cover;">
                                <div class="f-i-row">
                                    <a href="Telephonic_Pre_exam_and_Post_Results_Counselling"><span class="glyphicon glyphicon-chevron-right"></span> Telephonic Pre-exam & Post Results Counselling</a>
                                </div>
                                <div class="f-i-row">
                                    <a id="cpdtxt" style="cursor:pointer;"><span class="glyphicon glyphicon-chevron-right"></span> Centre of Psycho-Diagnostic and behavioural medicine</a>
									<div id="cpddd">
										&emsp;<a href="CPBM_Diagnostic_Assesments"><span class="glyphicon glyphicon-chevron-right"></span> Diagnostic Assessments</a><br />
										&emsp;<a href="CPBM_Counselling"><span class="glyphicon glyphicon-chevron-right"></span> Counselling</a><br />
										&emsp;<a href="CPBM_Psychotherapy"><span class="glyphicon glyphicon-chevron-right"></span> Psychotherapy</a><br />
									</div>
                                </div>
                                <div class="f-i-row">
                                    <a href="Statistics_MHM"><span class="glyphicon glyphicon-chevron-right"></span> Statistics- Mental Health India</a>
                                </div>
                                <div class="f-i-row">
                                    <a id="protxt" style="cursor:pointer;"><span class="glyphicon glyphicon-chevron-right"></span> Professionals</a>
									<div id="prodd">
										&emsp;<a href="Professionals_Psychologists"><span class="glyphicon glyphicon-chevron-right"></span> Psychologists</a><br />
										&emsp;<a href="Professionals_Counsellor"><span class="glyphicon glyphicon-chevron-right"></span> Counsellor</a><br />
										&emsp;<a href="Professionals_Social_Worker"><span class="glyphicon glyphicon-chevron-right"></span> Social Worker</a><br />
										&emsp;<a href="Professionals_Neuropsychologists"><span class="glyphicon glyphicon-chevron-right"></span> Neuropsychologists</a><br />
									</div>
                                </div>
								<div class="f-i-row">
                                    <a href="Training_Institutes"><span class="glyphicon glyphicon-chevron-right"></span> Training Institutions</a>
                                </div>
								<div class="f-i-row">
                                    <a href="Rehabilitation_Centres"><span class="glyphicon glyphicon-chevron-right"></span> Rehabilitation Centres</a>
                                </div>
								<div class="f-i-row">
                                    <a href="Mental_Health_Centres"><span class="glyphicon glyphicon-chevron-right"></span> Mental Health Centres</a>
                                </div>
								<div class="f-i-row" style="margin-bottom:0px;">
                                    <a href="Counselling_and_Vocational_Centres"><span class="glyphicon glyphicon-chevron-right"></span> Counselling & Vocational Centres</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        
         <div class="panel-body" id="About" style="margin-top:20px;">
			<div class="row">
				<div class="col-md-1"></div>
				<div class="col-md-10" style="background:#012B55;color:white;border-radius:5px;padding:15px;">
					<h4>About MHM India&ensp;<i class="fa fa-chevron-right"></i></h4><hr />
					<p style="text-align:justify;font-size:14px;">
						&emsp;As per WHO and other surveys and speech of honourable President of India
						revealed that about 10% of Indian population (about 13 Crores) is suffering from
						mental health problems. In addition to this a similar number of people of all age
						requires behavioural health services for mild mental health issues like adjustment
						problems, relationship management, personality problems, developmental problems,
						as well as mental health issues generated by environmental conditions. Besides
						these researches also observed that psychological factors are also associated with
						the aetiology of more than 70-80% of physical health diseases like cardio-vascular
						disease, Diabetes, Cancer, Asthma, Digestive Diseases, Kidney Diseases, AIDS etc. 
					</p>
					<p style="text-align:justify;font-size:14px;">
						&emsp;MHM India is a Non-Governmental Organization dedicated to educate, motivate
						and aware people nationally and globally for mental health. The core purpose of
						MHM India is to provide web enabled mental health services to the Indian population,
						so that every Indian can get an equal opportunity to reach to the professionals in
						India or abroad at need. The MHM India web platform will provide information about
						established, affiliated and recognized Mental Health Professionals (Psychologists,
						Counsellors, Social Workers, etc.), Psycho-diagnostic Centres, Psychiatric/neurological
						centres as per RCI guidelines in India, training and academic institutes and
						rehabilitation centres, so that needful people could contact at need. The MHM
						India is looking forward to communicate to the Indian Government through Indian NGOs,
						academic bodies and professionals for establishing ‘Mental Health Council of India’
						to serve Indians for better mental health services properly and service delivery under
						government policies related to mental health can be ensured. 
					</p>
				</div>
				<div class="col-md-1"></div>
			</div>	
		</div>
		<div class="panel-body" style="margin-top:20px;">
			<div class="row">
				<div class="col-md-1"></div>
				<div class="col-md-10" style="background:#012B55;color:white;border-radius:5px;padding:15px;">
					<h4>Aims of MHM India&ensp;<i class="fa fa-chevron-right"></i></h4><hr />
					<ol style="font:100 14px muli;margin-left:15px;text-align:justify;">
						<li>To aware Indian and global population about mental health problems and guide them for their need satisfactions.</li>
						<li>To ensure Mental Health service delivery under government policies to every Indian.</li>
						<li>Connecting mental health professionals at MHM India Platform and provide valid information of concerned professionals to the needy.</li>
						<li>Collecting and providing informations about education and training centres, mental health centres as well as government bodies recognizing professionals and training canters.</li>
						<li>Providing facilities like assessment, diagnoses, treatment through expert panel, multimedia means and affiliated mental health centres for maximum reach to the Indian population.</li>
						<li>Organizing mental health awareness camps in community, schools, educational institutions and health centres through recognized centres.</li>
						<li>Providing easily accessible products like web/mobiles enables services, virtual reality platform, computer based self-instructional applications can be used for assessment and treatment of mild mental problems.</li>
					</ol>
				</div>
				<div class="col-md-1"></div>
			</div>	
		</div>

        <footer class="foot" style="margin-top:20px;">
			<a href="Disclaimer" class="link">Disclaimer</a>&ensp;|&ensp;<a href="Privacy_Policy" class="link">Privacy Policy</a><br />
            <span>&copy; at Mental Health Mission India 2019</span><br />
            <span>All Rights Reserved<br />Designed by : <a href="http://www.linkedin.com/in/samsberk" target="_blank" class="link">samsberk</a></span>
        </footer>
		<div class="go-top" title="To top">
			<span class="glyphicon glyphicon-arrow-up gt-arrow"></span>
		</div>
        <!--
            <div class="content">
            
            <div class="my-menu">
                
            </div>
            
            <div class="d-box">
                <div class="col-sm-1"></div>
                <div class="col-sm-8">
                    <div class="con-box">
                        <h3>Center for Behavoural Health & Medicine</h3><hr />
                        <h4>Services (Free)</h4>
                        <p>
                            <span class="glyphicon glyphicon-arrow-right"></span> Counsellers (Telephone)<br />
                            <span class="glyphicon glyphicon-arrow-right"></span> Mental Health Camp<br />
                            <span class="glyphicon glyphicon-arrow-right"></span> Workshops in Schools<br />
                            <span class="glyphicon glyphicon-phone"></span> : <a href="tel:8899333777" class="link">8899333777</a><br />
                            <span class="glyphicon glyphicon-envelope"></span> : <a href="mailto:skumar@mentalhealthmission.in" class="link">skumar@mentalhealthmission.in</a>
                        </p><br />
                        <h4>Services (Paid)</h4>
                        <p>
                            <span class="glyphicon glyphicon-arrow-right"></span> Face to face counselling<br />
                            <span class="glyphicon glyphicon-arrow-right"></span> Video conference counselling<br />
                            <span class="glyphicon glyphicon-arrow-right"></span> Marital counselling<br />
                            
                        </p>
                    </div>
                    
                </div>
                <div class="col-sm-3">
                    <div class="prev-box">
                        <div class="col-xs-4" style="padding:0px;overflow:hidden;">
                            <img src="Images/SurveyIcon.jpg"/>
                        </div>
                        <div class="col-xs-8" style="padding-top:30px;text-align:center;">
                            <h4>N C L P Survey</h4>
                            <a href="Survey_Login" class="click-on" style="text-decoration:none;">Go for Login <span class="glyphicon glyphicon-log-in"></span></a>
                        </div>
                    </div>
                </div>
            </div>

        </div>
            
        </div>-->
            


    </form>
	<script src="JS/FooterJS.js"></script>
    <script>
		$("#wesdd").hide();
		$("#westxt").click(function () {
			$("#wesdd").slideToggle();
		});
		$("#meadd").hide();
		$("#meatxt").click(function () {
			$("#meadd").slideToggle();
		});
		$("#cpddd").hide();
		$("#cpdtxt").click(function () {
			$("#cpddd").slideToggle();
		});
		$("#prodd").hide();
		$("#protxt").click(function () {
			$("#prodd").slideToggle();
		});
    </script>
</body>
</html>
