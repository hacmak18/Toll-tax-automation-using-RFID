<%@ Page Language="C#" AutoEventWireup="true" CodeFile="operator_login.aspx.cs" Inherits="operator_login" %>

<!DOCTYPE html>

<html>

<head runat="server">

    <title>Admin</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <link href="css/styles.css" rel="stylesheet">
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="header">
                <div class="container">
                    <div class="row">
                        <div class="col-md-5">
                            <div class="logo">
                                <h1><a style="color: #428BCA">Admin-operator</a></h1>
                            </div>
                        </div>
                        <div class="col-md-5">
                            <div class="row">
                                <div class="col-lg-12">
                                </div>
                            </div>
                        </div>

                    </div>
                    <div class="col-md-2">
                        <div class="navbar navbar-inverse" role="banner">
                            <nav class="collapse navbar-collapse bs-navbar-collapse navbar-right" role="navigation">
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="page-content container">
            <div class="row">
                <div class="col-md-4 col-md-offset-4" style="margin-left: 150px;">
                    <div class="login-wrapper" style="margin-top: 50px;">
                        <div class="box">
                            <div class="content-wrap">
                                <h2 style="margin: 20px">Sign In</h2>

                                <asp:TextBox ID="adminUname" runat="server" data-bvalidator="required" CssClass="form-control" type="text" placeholder="User Name" />
                                <asp:TextBox ID="adminPassword" runat="server" data-bvalidator="required" CssClass="form-control" type="password" placeholder="Password" />
                                <asp:Button ID="Asignin" runat="server" Style="margin-top: 10px" CssClass="btn btn-primary" Text="Sign in" OnClick="Asignin_Click"/>
                            </div>
                        </div>


                    </div>
                </div>
            </div>
        </div>




        <script src="https://code.jquery.com/jquery.js"></script>

        <script src="bootstrap/js/bootstrap.min.js"></script>
        <script src="js/custom.js"></script>

        <footer style="margin-top: 34.8%">
            <div class="container">

                <div class="copy text-center">
                    © 2017 Digiworld ltd. . All rights reserved | Design by Digiworld
           
                </div>

            </div>
        </footer>


    </form>
    <script type="text/javascript">
        $(document).ready(function () {
            $('#form1').bValidator();
        });
    </script>
</body>
</html>
