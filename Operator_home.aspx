<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Operator_home.aspx.cs" Inherits="Operator_home" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <title>Admin</title>
    <link href="css/bootstrap.css" type="text/css" rel="stylesheet" media="all">
    <link href="css/style.css" type="text/css" rel="stylesheet" media="all">
    <link rel="stylesheet" href="css/lightbox.css">
    <style>
        .wid {
            width: 220px;
        }

        .img {
            background-image: url(/images/bricks.jpg);
            background-size: 100% 150%;
            background-repeat: no-repeat;
        }

        .mrg {
            margin-top: 10px;
        }

        .stl {
            align-content: center;
            margin-left: 40%;
            margin-top: 20%;
            width: 20%;
            background-color: #ffff99;
        }
    </style>
    <script type="text/javascript">
        function tasb() {
            var w1 = window.open('http://digiworld.somee.com/admin_recharge.aspx', '_blank');
            var w2 = window.open('http://digiworld.somee.com/car_deduction.aspx', '_blank');
            //var btn = document.getElementById('LinkButton1');
            //debugger;
            //btn.click(tasb1());
           
            var w3 = window.open('http://digiworld.somee.com/truck_deduction.aspx', '_blank');
            //var linkArray = ['http://localhost:1525/admin_recharge.aspx', 'http://localhost:1525/car_deduction.aspx', 'http://localhost:1525/truck_deduction.aspx']; // your links
            //for (var i = 0; i < linkArray.length; i++) {
            //    // will open each link in the current window
            //    chrome.tabs.create({
            //        url: linkArray[i]
            //    });
            //}

            //window.open('Admin_recharge.aspx', '_blank')

            //window.open('car_deduction.aspx', '_blank')

            //window.open('truck_deduction.aspx', '_blank')
        }
        //function tasb1()
        //{
        //    debugger;
        //    var w2 = window.open('http://localhost:1525/car_deduction.aspx', '_blank');
        //}

    </script>
</head>
<body class="img">
    <form id="form1" runat="server">

        <div class="header">
            <div class="container">
                <div class="row">
                    <div class="col-md-5">
                        <div class="logo">
                            <h1><a style="color: #428BCA">Operator </a></h1>
                        </div>
                    </div>
                    <div class="col-md-5">
                        <div class="row">
                            <div class="col-lg-12">
                            </div>
                        </div>

                    </div>
                    <div class="col-md-2">
                        <div class="navbar navbar-inverse" role="banner">
                            <nav class="collapse navbar-collapse bs-navbar-collapse navbar-right" role="navigation">
                                <ul class="nav navbar-nav">
                                    <li class="dropdown">
                                        <asp:Button ID="Asignout" runat="server" Text="Sign out " CssClass="btn btn-primary " Height="30px" Style="margin: 10px" OnClick="asignout_click" />

                                    </li>
                                </ul>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
        </div>



        <div class="panel panel-body panel-collapse stl">
            <asp:LinkButton ID="db_submit" runat="server" CssClass="btn-danger form-control mrg" Text="Expand" OnClientClick="tasb()" />
            <asp:HiddenField ID="LinkButton1"  runat="server" />
            <%--//<asp:LinkButton ID="LinkButton2" Visible="false" runat="server" CssClass="btn-danger form-control mrg" Text="Expand" OnClientClick="tasb2()" />--%>
        </div>
    </form>
</body>
</html>
