<%@ Page Language="C#" AutoEventWireup="true" CodeFile="car_deduction.aspx.cs" Inherits="car_deduction" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <title>Car deduction</title>
    <link href="css/bootstrap.css" type="text/css" rel="stylesheet" media="all">
    <link href="css/style.css" type="text/css" rel="stylesheet" media="all">
    <link rel="stylesheet" href="css/lightbox.css">
    <style>
        .wid{
            width:220px;
           
        }
        .img{
            background-image:url(/images/cars.jpg);
            background-size:100% 200%;
            background-repeat:no-repeat;    
        }
        .mrg{
            margin-top:10px;
        }
        .cr{
            align-content:center;
            margin-left:40%;
            margin-top:20%;
            width:20%;
            background-color:#f9ff12;
        }
        
    </style>
</head>
<body class="img">
    <form id="form1" runat="server">
    <div class="panel panel-body panel-collapse op cr">
       <h2 style="color:ActiveBorder"> Card no.</h2>
        <asp:TextBox ID="ccd" runat="server" CssClass="form-control wid mrg" placeholder="Card no."  />
        <asp:Button ID="cd_submit" runat="server" CssClass="btn-default form-control mrg" Text="Submit" OnClick="cd_submit_click" />
    
    </div>
    </form>
</body>
</html>
