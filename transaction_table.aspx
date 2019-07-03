<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="transaction_table.aspx.cs" Inherits="transaction_table" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        .wd{
            margin-left:30%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="col-sm-10 " style="margin-bottom:50px">
        <div style="background-color:ActiveBorder" class="col-md-sm-12">
        <h3 style="padding-left:40%;"><u>Transacion table</u></h3>  </div>
        <asp:GridView ID="fb_gv" runat="server" CellPadding="10" ForeColor="#333333" CssClass="wd" GridLines="None" AutoGenerateColumns="False">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:TemplateField HeaderText="#">
                    <ItemTemplate>
                        <asp:Label ID="tid" runat="server" Text='<%# Bind("trans_id") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="user name">
                    <ItemTemplate>
                        <asp:Label ID="tuname" runat="server" Text='<%# Bind("user_name") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="card_no">
                    <ItemTemplate>
                        <asp:Label ID="tcno" runat="server" Text='<%# Bind("card_no") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                  <asp:TemplateField HeaderText="Balance">
                    <ItemTemplate>
                        <asp:Label ID="balance" runat="server" Text='<%# Bind("balance") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Date">
                    <ItemTemplate>
                        <asp:Label ID="tdate" runat="server" Text='<%# Bind("trans_date") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
              
                
            </Columns>
            
        </asp:GridView>
        </div>
</asp:Content>

