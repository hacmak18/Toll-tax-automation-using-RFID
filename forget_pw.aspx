<%@ Page Title="" Language="C#" MasterPageFile="~/user.master" AutoEventWireup="true" CodeFile="forget_pw.aspx.cs" Inherits="forget_pw" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">

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
    </style>
</asp:content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <asp:Panel runat="server" CssClass="table-responsive">
        <div class="content-w3ls" style="margin-top: 120px; margin-bottom: 13%">
            <div class="form-agileits" style="align-items: center">
                <div class="form-w3ls" >
                    <h2 style="margin-bottom:40px">Reset password</h2>
                    <asp:TextBox runat="server" ID="fp_uname" type="message" data-bvalidator="required" CssClass="form-control fp" Width="100%"  TextMode="SingleLine">USERNAME</asp:TextBox>
                    <asp:Button runat="server" ID="fp_sbm" type="submit" OnClick="submit_click" CssClass="btn btn-success wd" Width="90%" value="Submit" Text="Submit" />
                </div>
            </div>
        </div>
    </asp:Panel>

</asp:Content>

