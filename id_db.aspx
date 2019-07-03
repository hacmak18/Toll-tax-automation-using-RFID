<%@ Page Language="C#" AutoEventWireup="true" CodeFile="id_db.aspx.cs" Inherits="id_db" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <title>Admin</title>
    <link href="css/bootstrap.css" type="text/css" rel="stylesheet" media="all">
    <link href="css/style.css" type="text/css" rel="stylesheet" media="all">
    <link rel="stylesheet" href="css/lightbox.css">
    <style>
        .wid{
            width:220px;
           
        }
        .img{
            background-image:url(/images/bricks.jpg);
            background-size:100% 150%;
            background-repeat:no-repeat;    
        }
        .mrg{
            margin-top:10px;
        }
        .stl{
            align-content:center;
            margin-left:40%;
            margin-top:20%;
            width:20%;
            background-color:#ffff99;
        }
    </style>
</head>
<body class="img">
    <form id="form1" runat="server">
    <div class="panel panel-body panel-collapse stl">
       <h2 style="color:red"> Card no.</h2>
        <asp:TextBox ID="db_id" runat="server" CssClass="form-control wid mrg"  placeholder="card no."/>
        <asp:Button ID="db_submit" runat="server" CssClass="btn-danger form-control mrg" Text="Submit" OnClick="db_click" />
    </div>
    </form>
</body>
</html>