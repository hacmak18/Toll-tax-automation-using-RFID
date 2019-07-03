<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin_recharge.aspx.cs" Inherits="Admin_recharge" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <title>Recharge </title>
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <link href="css/styles.css" rel="stylesheet">
    <script src="jquery-1.11.0.min.js"></script>
   <style>
        .content-w3ls {
            width: 40%;
            margin: 0 auto;
            text-align: center;
            padding: 60px 40px;
        }

        @media (max-width: 320px) {
            h3 {
                padding: 19px 0;
                font-size: 19px;
            }

            .ra {
                margin-bottom: 15px;
                margin-top: 15px;
            }
            
        }
    </style>
</head>
<body style="background-image: url(images/dark-background-wallpaper-hd-6.png)">
    <form id="form1" runat="server">
        <asp:Panel runat="server" class="table-responsive">

        <div class="table-responsive" style="background-image: url('images/dark.jpg');">
            <div class="content-w3ls " style="margin-top:20%;margin-bottom: 19.5%;">

                <div class="form-agileits" style="align-items: center">

                    <div class="form-w3ls">


                        <h3 style="margin-bottom: 30px; color: #ffffff">Admin Recharge</h3>
                        <div class="clear"></div>
                    </div>
                    <asp:TextBox runat="server" ID="cardid" data-bvalidator="required,digit" CssClass="form-control" Width="100%" placeholder="Card no." TextMode="SingleLine"></asp:TextBox>
                    <asp:TextBox runat="server" ID="rechargeamount" data-bvalidator="required,digit" CssClass="form-control" style="margin-top:15px;margin-bottom:15px" placeholder="Amount" Width="100%" TextMode="SingleLine"></asp:TextBox>
                    <asp:Button runat="server" ID="cntct_sbm" CssClass="btn btn-success" Width="90%" value="Submit" OnClick="recharge_click" Text="Recharge" />
                </div>
            </div>
        </div>
    </asp:Panel>
    </form>
</body>
</html>
