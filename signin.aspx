<%@ Page Language="C#" AutoEventWireup="true" CodeFile="signin.aspx.cs" Inherits="signin" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <title>Sign in</title>
    <link href="signin.css" rel="stylesheet" />
     <link href="css/bootstrap.css" type="text/css" rel="stylesheet" media="all">
    <link href="css/style.css" type="text/css" rel="stylesheet" media="all">
    <link rel="stylesheet" href="css/lightbox.css">
</head>
<body>
     <div class="top-nav" style="background-color: #5d5d5d">

            <div class="container" style=" z-index: 1; margin-top: -10px; width: 100%; background-color: #5d5d5d">
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

                        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1" style="background-color: #5d5d5d">
                            
                        </div>

                    </div>

                </nav>
            </div>
        </div>
    <form id="form1" runat="server">
     <div class="header-main" style="margin-bottom: 6.7%">
        <asp:Label ID="loginheader" runat="server" Text="Sign in" Style="margin-top: 30px; color: white; font-size: xx-large; margin-left: 40%; margin-bottom: 10px"></asp:Label>

        <div class="header-bottom">
            <div class="header-right w3agile">

                <div class="header-left-bottom agileinfo">


                    <asp:TextBox ID="username" runat="server" data-bvalidator="required" CssClass="form-control" placeholder="username" /><br />
                    <asp:TextBox ID="password" runat="server" TextMode="Password" data-bvalidator="required" CssClass="form-control" placeholder="password"/><br />
                    <div class="remember">
                        <span class="checkbox1">
                            <label class="checkbox">
                                <asp:CheckBox ID="cb" runat="server" /><i> </i>Remember me</label>
                        </span>
                        <div class="forgot">
                            <h6><a href="forgot_password.aspx">Forgot Password?</a></h6>
                        </div>
                        <div class="clear"></div>
                    </div>

                    <asp:Button ID="Button1" runat="server" Text="Sign-in" OnClick="Button1_Click" />
                    <div class="header-left-top">
                        <div class="sign-up">
                            <h2 style="margin-bottom:20px">or</h2>

                            <asp:Button ID="loginsignup" runat="server" CssClass="" Text="Sign-up" OnClick="loginsignup_Click" />
                        </div>

                    </div>


                </div>
            </div>

        </div>
    </div>
    </form>
    <div class="footer">
            <div class="container">

                <div class="copy-right">
                    <p class="animated wow fadeInRight" data-wow-delay=".5s" style="padding-bottom: 1%">© 2017 Digiworld ltd. . All rights reserved | Design by Digiworld  </p>
                </div>
            </div>

        </div>
</body>
</html>
