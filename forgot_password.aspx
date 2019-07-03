<%@ Page Language="C#" AutoEventWireup="true" CodeFile="forgot_password.aspx.cs" Inherits="forgot_password" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <title>Reset password</title>
    <link href="css/bootstrap.css" type="text/css" rel="stylesheet" media="all">
    <link href="css/style.css" type="text/css" rel="stylesheet" media="all">
    <link rel="stylesheet" href="css/lightbox.css">
    <link href="contact.css" rel="stylesheet" />
    <style>
        .wd {
            margin-bottom:10px;
            margin-top:10px;
        }
        .fp{
            margin-top:15px;
        }
        .cn{
            position: fixed;
             z-index: 1;
              margin-top: -10px;
               width: 100%;
                background-color: #5d5d5d;
        }
        .pnl{
            margin-top: 120px; margin-bottom: 13%;

        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="top-nav" style="background-color: #5d5d5d">

            <div class="container cn">
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

                    </div>

                </nav>
            </div>
        </div>

    <div>
     <asp:Panel runat="server" CssClass="table-responsive">
        <div class="content-w3ls pnl">
            <div class="form-agileits" style="align-items: center">
                <div class="form-w3ls" >
                    <h2 style="margin-bottom:40px">Reset password</h2>
                    <h3 style="margin-right:29%">User Name :</h3>
                    <asp:TextBox runat="server" ID="fp_uname" data-bvalidator="required" CssClass="form-control fp" Width="50%" Style="margin-left:25%"></asp:TextBox>
                    <asp:Button runat="server" ID="fp_sbm" type="submit" OnClick="submit_click" CssClass="btn btn-success wd" Width="25%" Style="margin-right:25%" value="Submit" Text="Submit" />
                </div>
            </div>
        </div>
    </asp:Panel>
    </div><div class="footer">
            <div class="container">

                <div class="copy-right">
                    <p class="animated wow fadeInRight" data-wow-delay=".5s" style="padding-bottom: 1%">© 2017 Digiworld ltd. . All rights reserved | Design by Digiworld  </p>
                </div>
            </div>

        </div>
    </form>
</body>
</html>
