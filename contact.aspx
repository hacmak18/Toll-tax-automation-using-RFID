<%@ Page Title="" Language="C#" MasterPageFile="~/user.master" AutoEventWireup="true" CodeFile="contact.aspx.cs" Inherits="contt" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">

    <script src="jquery.bvalidator.js"></script>
    <link href="bvalidator.css" rel="stylesheet" />
    <link href="contact.css" rel="stylesheet" />
    <style>
        .wd{
            margin-top: 120px; 
            margin-bottom:13%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:Panel runat="server" class="table-responsive">
        
    <div class="content-w3ls wd">
        <div class="form-agileits" style="align-items: center">
            <div class="form-w3ls">
                
                
                    <asp:Image runat="server" src="contact/images/mail2.png" style="float:right"></asp:Image>
                <h3>Contact Us</h3>
                <div class="clear"></div>
            </div>
            <asp:TextBox runat="server" ID="cntct_user1" type="message" ReadOnly="true" data-bvalidator="required" CssClass="form-control" Width="100%" name="message" TextMode="SingleLine">USERNAME</asp:TextBox>
            <asp:TextBox runat="server" ID="cntct_email1" type="message" Style="margin-bottom: 15px; margin-top: 15px" data-bvalidator="required,email" CssClass="form-control" ReadOnly="true" Width="100%" TextMode="SingleLine">EMAIL</asp:TextBox>
            <asp:TextBox runat="server" ID="cntct_msg" type="message" Style="margin-bottom:20px" data-bvalidator="required" CssClass="form-control" Width="100%" name="message" Mode="MultiLine">YOUR MESSAGE</asp:TextBox>
            <asp:Button runat="server" ID="cntct_sbm" type="submit" OnClick="cntct_submit_click" CssClass="btn btn-success" Width="90%" value="Submit" Text="Submit" />
        </div>
        </div>
            
    </asp:Panel>
</asp:Content>

