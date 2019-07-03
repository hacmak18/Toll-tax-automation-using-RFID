<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="city_state.aspx.cs" Inherits="city_state" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="col-sm-10 " style="margin-bottom:50px">
        <div style="background-color:ActiveBorder" class="col-md-sm-12">
        <h3 style="padding-left:40%;"><b>City table</b></h3>  </div>
        <div style="margin-left:30%">
        <asp:GridView ID="city_gv" runat="server" CellPadding="10" ForeColor="#333333" GridLines="None" AutoGenerateColumns="False">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:TemplateField HeaderText="city id">
                    <ItemTemplate>
                        <asp:Label ID="ctid" runat="server" Text='<%# Bind("city_id") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="city name">
                    <ItemTemplate>
                        <asp:Label ID="ctname" runat="server" Text='<%# Bind("city_name") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="state id">
                    <ItemTemplate>
                        <asp:Label ID="stid" runat="server" Text='<%# Bind("state_id") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="state name">
                    <ItemTemplate>
                        <asp:Label ID="stname" runat="server" Text='<%# Bind("state_name") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                
            </Columns>
            
        </asp:GridView>
            </div>
        </div>
</asp:Content>

