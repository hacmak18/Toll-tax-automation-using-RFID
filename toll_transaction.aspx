<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="toll_transaction.aspx.cs" Inherits="toll_transaction" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
   <style>
       .wd{
           margin-left:30%;
       }
   </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="col-sm-10 " style="margin-bottom:50px;">
        <div style="background-color:ActiveBorder" class="col-md-sm-12">
        <h3 style="padding-left:40%;"><u>Toll-transaction</u></h3>  </div>
        <asp:GridView ID="fb_gv" runat="server" CellPadding="10" ForeColor="#333333" CssClass="wd" GridLines="None" AutoGenerateColumns="False">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:TemplateField HeaderText="#">
                    <ItemTemplate>
                        <asp:Label ID="dtid" runat="server" Text='<%# Bind("dt_id") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Card no">
                    <ItemTemplate>
                        <asp:Label ID="cardno" runat="server" Text='<%# Bind("card_no") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Amount">
                    <ItemTemplate>
                        <asp:Label ID="amount" runat="server" Text='<%# Bind("amount") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Vehicle type">
                    <ItemTemplate>
                        <asp:Label ID="vtype" runat="server" Text='<%# Bind("type") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="date">
                    <ItemTemplate>
                        <asp:Label ID="tdate" runat="server" Text='<%# Bind("date") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                
            </Columns>
            
        </asp:GridView>
        </div>
</asp:Content>

