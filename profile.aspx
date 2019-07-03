<%@ Page Language="C#" AutoEventWireup="true" CodeFile="profile.aspx.cs" Inherits="profile" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <title>Profile</title>
     <link href="profile_css/font-awesome.min.css" rel="stylesheet" />
    <link href="profile_css/nivo-lightbox.css" rel="stylesheet" />
    <link href="profile_css/templatemo-style.css" rel="stylesheet" />
    <link href="bootstrap/css/bootstrap.css" rel="stylesheet" />
    <link href="bootstrap/css/bootstrap-theme.css" rel="stylesheet" />
    <link href="bootstrap/css/bootstrap-theme.min.css" rel="stylesheet" />
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" />

    <link href="css/bootstrap.css" type="text/css" rel="stylesheet" media="all">
    <link href="css/style.css" type="text/css" rel="stylesheet" media="all">
    <link rel="stylesheet" href="css/lightbox.css">

     <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    
    <script src="js/jquery-1.11.1.min.js"></script>
    <script src="js/bootstrap.js"></script>

    <script src="js/responsiveslides.min.js"></script>
    <script>

        $(function () {

            $("#slider3").responsiveSlides({
                auto: true,
                pager: true,
                nav: true,
                speed: 500,
                namespace: "callbacks",
                before: function () {
                    $('.events').append("<li>before event fired.</li>");
                },
                after: function () {
                    $('.events').append("<li>after event fired.</li>");
                }
            });
        });
    </script>
    <style>
        .margin {
            margin-top: 27px;
            margin-left: 5px;
            background-color: transparent;
            border-color: transparent;
        }

        .h4 {
            color: #8080ff;
        }
        .c{
            position: fixed; 
            z-index: 1; 
            margin-top: -10px; 
            width: 100%; 
        }
        .bc{
            background-color: #5d5d5d;
        }
    </style>

    <link href="css/animate.min.css" rel="stylesheet">
    <script src="js/wow.min.js"></script>
    <script>
        new WOW().init();
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div class="top-nav bc">

            <div class="container c bc">
                <nav class="navbar navbar-default">
                    <div class="container-fluid">

                        <div class="navbar-header">
                            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                                <span class="sr-only">Toggle navigation</span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                            </button>
                            <h1><a class="navbar-brand animated wow fadeInLeft" data-wow-delay=".5s" href="homepage.aspx" style="color: #6699FF">Digiworld</a></h1>
                        </div>

                        <div class="collapse navbar-collapse bc" id="bs-example-navbar-collapse-1" >
                            <ul class="nav navbar-nav navbar-left animated wow fadeInRight" data-wow-delay=".5s">
                                <li><a href="homepage.aspx">Home</a></li>
                                <li><a href="about.aspx">About</a></li>
                                <li><a href="feedback.aspx">feedback</a></li>
                                <li><a href="contact.aspx">Contact</a></li>
                                <li><a href="recharge.aspx">Recharge</a></li>
                                <li><a href="profile.aspx">Profile</a></li>
                                <li><asp:Button ID="so" runat="server" Text="Sign out" CssClass="margin h4" OnClick="so_click"/></li>


                            </ul>

                        </div>

                    </div>

                </nav>
            </div>
        </div>
    

         <div class="container-flude" style="background-image: url('images/n.jpeg')">

        <div id="home">
            <div class="container" style="margin-top: 5%; color: blue;">
                <div class="row">

                    <div class="col-md-5 col-sm-3"></div>
                    <div class="col-md-7 col-sm-9">
                        <h3 style="color:#ffffff">welcome,  <asp:Label ID="welcomename" runat="server"></asp:Label></h3>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="divider" style="background-color:#5d5d5d">
        <div class="container">
            <div class="row">
                <div class="col-md-4 col-sm-6" style="margin-left: 150px">
                    <div class="divider-wrapper divider-one usr" style="background-image: url('images/user5.png'); background-repeat: no-repeat">
                        <i class="fa fa-ticket"></i>
                        <h2 style="color: blue"><a href="profile_user.aspx">User</a></h2>
                        <p style="color: yellow"></p>
                    </div>
                </div>
                <div class="col-md-4 col-sm-6" style="margin-left: 80px">
                    <div class="divider-wrapper divider-three" style="background-image: url('images/logo-small.png'); background-repeat: no-repeat">
                        <i class="fa fa-rupee"></i>
                        <h2><a href="p_transaction.aspx">Transaction</a></h2>
                    </div>
                </div>

            </div>
        </div>
    </div>





        <div class="footer">
            <div class="container">

                <div class="copy-right">
                    <p class="animated wow fadeInRight" data-wow-delay=".5s" style="padding-bottom: 1%; visibility: hidden">© 2017 Digiworld ltd. . All rights reserved | Design by Digiworld  </p>
                </div>
            </div>

        </div>
    
    </form>
    <script type="text/javascript">
        $(document).ready(function () {
            $('#form1').bValidator();
        });
    </script>
    <script type="text/javascript">
        $(' .rate_row ').centipedejs({
            stars: 5,
            range: [2, 6],
            count: 2,
            disable: 4,
            default_stars: 2,
            on_select: function (data) { console.log("write something..."); }
        });
    </script>
</body>
</html>
