<%@ Page Language="C#" AutoEventWireup="true" CodeFile="truck_deduction.aspx.cs" Inherits="truck_deduction" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <title>Truck deduction</title>

    <link href="css/bootstrap.css" type="text/css" rel="stylesheet" media="all">
    <link href="css/style.css" type="text/css" rel="stylesheet" media="all">
    <link rel="stylesheet" href="css/lightbox.css">
    <style>
        .wid {
            width: 220px;
        }

        .img {
            background-image: url(/images/truck.jpg);
            background-size: 100% 150%;
            background-repeat: no-repeat;
        }

        .mrg {
            margin-top: 10px;
        }

        .p {
            align-content: center;
            margin-left: 40%;
            margin-top: 20%;
            width: 20%;
            background-color: #ffff99;
        }
    </style>
</head>
<body class="img">
    <form id="form1" runat="server">
        <div class="panel panel-body panel-collapse p">
            <h2 style="color: red">Card no.</h2>
            <asp:TextBox ID="tcd" runat="server" CssClass="form-control wid mrg" placeholder="card no." />
            <asp:Button ID="td_submit" runat="server" CssClass="btn-danger form-control mrg" Text="Submit" OnClick="td_click" />

        </div>
    </form>
</body>
</html>

