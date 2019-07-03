<%@ Page Title="" Language="C#" MasterPageFile="~/user.master" AutoEventWireup="true" CodeFile="feedback.aspx.cs" Inherits="feedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="Feedback Widget Responsive" />
    <link href="temp/feedback_widget/web/css/style.css" rel="stylesheet" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
    <link href="feedback.css" rel="stylesheet" />

   <link href="fb.css" rel="stylesheet" />
    <link href="http://www.cssscript.com/wp-includes/css/sticky.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="//netdna.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css">
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" >
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div style="margin-top: 46px; margin-bottom: auto;">
        <div class="content" style="background-image: url('images/news.png');">
            <h1 style="color: #ffffff; margin-left: 44%;">Feedback</h1>
            <div class="main fb" style="">

                <h5>User Name</h5>
                <asp:TextBox type="text" ID="fbUname" runat="server" CssClass="form-control" data-bvalidator="required" placeholder="User name" ReadOnly="True"></asp:TextBox>
                <h5>Email</h5>
                <asp:TextBox type="text" ID="fbmail" runat="server" CssClass="form-control" data-bvalidator="required,email" placeholder="E-mail" ReadOnly="true"></asp:TextBox>
                <h5>Your Review <span>( Tips and Guidelines ) </span></h5>
                <asp:TextBox type="text" ID="fbreview" runat="server" data-bvalidator="required" CssClass="form-control" placeholder="write your Review"></asp:TextBox>
                <h5>Is there anything you would like to tell us?</h5>
                <asp:TextBox type="text" ID="fbhelp" runat="server" CssClass="form-control" placeholder="Help us to improve our site"></asp:TextBox>
                <asp:Button type="submit" ID="fbsubmit" Text="Submit" runat="server" CssClass="btn btn-primary bt" OnClick="fbsubmit_click" />
            </div>
        </div>
    </div>

</asp:Content>

