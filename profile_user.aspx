<%@ Page Title="" Language="C#" MasterPageFile="~/user.master" AutoEventWireup="true" CodeFile="profile_user.aspx.cs" Inherits="profile_user" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="Feedback Widget Responsive" />
    <link href="temp/feedback_widget/web/css/style.css" rel="stylesheet" />
    <style>
        .width {
            width: 30%;
        }

        .st {
            margin-top: 3%;
            margin-left: 35%;
            float: left;
        }

        .d1 {
            text-align: center;
            margin-top: 90px;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="">

        <div class="d1">

            <h2 style="color: white">Profile</h2>
        </div>
    </div>
    <div class="col-sm-12">

        <div class="main st">
            <h5 style="color: blue">First name</h5>
            <asp:Label ID="fname" runat="server" CssClass="form-control"></asp:Label>
            <h5 style="color: blue">Last name</h5>
            <asp:Label ID="Lname" runat="server" CssClass="form-control"></asp:Label>
            <h5 style="color: blue">User Name</h5>
            <asp:Label ID="name_user" runat="server" CssClass="form-control"></asp:Label>
            <div class="row ">
                <div class="col-md-6">
                    <h5 style="color: blue">Card no.</h5>
                    <asp:Label ID="dcrd_no" runat="server" CssClass="form-control"></asp:Label>
                </div>
                <div class="col-md-6">
                    <h5 style="color: blue">Available balance</h5>
                    <asp:Label ID="Abalance" runat="server" CssClass="form-control"></asp:Label>
                </div>

                <h5 style="color: blue">Email</h5>
                <asp:Label ID="email_user" runat="server" CssClass="form-control"></asp:Label>
                <h5 style="color: blue">Address</h5>
                <asp:Label ID="add_user" runat="server" CssClass="form-control"></asp:Label>
                <h5 style="color: blue">Mobile no</h5>
                <asp:Label ID="mo_user" runat="server" CssClass="form-control"></asp:Label>
            </div>
        </div>
    </div>
</asp:Content>

