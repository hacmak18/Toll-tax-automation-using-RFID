<%@ Page Language="C#" AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="register" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <title>Registration</title>
    <link href="css/registration.css" rel="stylesheet" />
    <link href="bvalidator.css" rel="stylesheet" />
    <link href="css/bootstrap.css" type="text/css" rel="stylesheet" media="all">
    <link href="css/style.css" type="text/css" rel="stylesheet" media="all">
    <link rel="stylesheet" href="css/lightbox.css">
    <script type="text/javascript" src="jquery.bvalidator.js"></script>
    <script type="text/javascript" src="jquery-1.11.0.min.js"></script>
    <script src="jquery.bvalidator-yc.js"></script>
    <style>
        .m {
            z-index: 1;
            margin-top: -10px;
            width: 100%;
            background-color: #5d5d5d;
        }

        .A {
            display: table-cell;
            color: #FFFFFF;
        }

        .B {
            width: 40%;
            float: left;
            margin-right: 19%;
            align-items: flex-start;
        }
        .s1{
            width: 40%; 
            float: left;
        }
        .S{
            width:40%;
            float:left;
            margin-right:5%;
        }
    </style>

</head>
<body>
    <div class="top-nav" style="background-color: #5d5d5d">

        <div class="container m">
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
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <div class="container-fluid" style="background-image: url('images/dark-background-wallpaper-hd-6.png')">
            <div class="login_div lgged">
                <div style="display: table">
                    <div class="A">
                        <h3 class="rg" style="margin-top: -20px">Registration</h3>
                        <span style="width: 100%">
                            <span class="S">
                                <p>
                                    First name:
                <asp:TextBox ID="fname" runat="server" CssClass="form-control wd" data-bvalidator="alpha,required"></asp:TextBox>
                                    Last name:
                <asp:TextBox ID="lname" runat="server" CssClass="form-control wd" data-bvalidator="alpha,required"></asp:TextBox>
                                </p>

                                <p>
                                    Email-ID:
                <asp:TextBox ID="email" runat="server" CssClass="form-control wd" data-bvalidator="email,required" type="text"></asp:TextBox>
                                </p>

                                <p>
                                    User name:
             <asp:TextBox ID="uname" runat="server" CssClass="form-control wd" data-bvalidator="alphanum,required"></asp:TextBox>

                                </p>

                                <p>
                                    Password:
                        <asp:TextBox ID="password" runat="server" CssClass="form-control wd" data-bvalidator="required" TextMode="Password"></asp:TextBox>
                                    Re-enter Password:
                        <asp:TextBox runat="server" data-bvalidator="equalto[password],required" CssClass="form-control wd" TextMode="Password"></asp:TextBox>

                                </p>
                            </span>
                            <span class="s1" >
                                <p>
                                    Address:<asp:TextBox ID="address" runat="server" CssClass="form-control wd" data-bvalidator="maxlength[160],required" type="text" rowspan="3"></asp:TextBox>
                                </p>
                                <p>
                                    Mobile No:<asp:TextBox ID="mob_no" runat="server" CssClass="form-control wd" data-bvalidator="maxlength[10],minlength[10],number,required"></asp:TextBox>
                                </p>

                                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                    <ContentTemplate>
                                        <p>
                                            state:
                <asp:DropDownList ID="dstate" runat="server" CssClass="form-control wd" data-bvalidator="required" OnSelectedIndexChanged="dstate_SelectedIndexChanged" AutoPostBack="True"></asp:DropDownList>

                                        </p>

                                        <p>
                                            city:
                <asp:DropDownList ID="dcity" CssClass="form-control wd" data-bvalidator="required" runat="server"></asp:DropDownList>

                                        </p>
                                    </ContentTemplate>
                                    <Triggers>
                                        <asp:AsyncPostBackTrigger ControlID="dstate" EventName="SelectedIndexChanged" />
                                    </Triggers>
                                </asp:UpdatePanel>

                                <p>
                                    pincode:<asp:TextBox ID="pc" runat="server" CssClass="form-control wd" data-bvalidator="maxlength[6],minlength[6],number,required"></asp:TextBox>
                                </p>
                            </span>
                        </span>
                        <br />
                        <p>
                            <asp:Button ID="rsubmit" CssClass="btn btn-default wd" Style="margin-left: 40%" runat="server" Text="submit" OnClick="rsubmit_Click" />

                        </p>
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
    <script type="text/javascript">
        $(document).ready(function () {
            $('#form1').bValidator();
        });
    </script>
</body>
</html>
