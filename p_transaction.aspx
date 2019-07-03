<%@ Page Title="" Language="C#" MasterPageFile="~/user.master" AutoEventWireup="true" CodeFile="p_transaction.aspx.cs" Inherits="p_transaction" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
        .wd {
            margin-left: 20px;
            margin-right: 20px;
        }
        .mrg{
            margin-left:30%;
            margin-top:10px;
            margin-bottom:30%;
        }
        .back {
            background-color:white;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="col-sm-10 " style="margin-top: 10%; margin-bottom: 100px; margin-left: 10%">
        <div style="background-color: ActiveBorder" class="col-md-sm-12 back">
            <h3 style="padding-left: 40%;"><u>Transactions</u></h3>
        </div>
        <asp:GridView ID="pt_view" runat="server" CellPadding="30" CssClass="back mrg" ForeColor="#333333" GridLines="None" AutoGenerateColumns="False">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:TemplateField HeaderText="card no" ControlStyle-CssClass="wd">
                    <ItemTemplate>
                        <asp:Label ID="aconactid" runat="server" CssClass="wd" Text='<%# Bind("card_no") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="amount">
                    <ItemTemplate>
                        <asp:Label ID="aemail" runat="server" CssClass="wd" Text='<%# Bind("amount") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="vehicle">
                    <ItemTemplate>
                        <asp:Label ID="amessage" runat="server" CssClass="wd" Text='<%# Bind("type") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="date">
                    <ItemTemplate>
                        <asp:Label ID="datep" runat="server" Text='<%# Bind("date") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

            </Columns>

        </asp:GridView>
    </div>
</asp:Content>

