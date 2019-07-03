<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="adminhome.aspx.cs" Inherits="adminhome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
        .page-container {
            min-width: 1260px;
            position: relative;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            width: 100%;
            height: 100%;
            margin: 0px auto;
        }


        .inner-block {
            padding: 8em 2em 4em 2em;
            background: #fafafa;
        }

        .market-update-block {
            padding: 2em 2em;
            background: #999;
        }

            .market-update-block h3 {
                color: #fff;
                font-size: 2.5em;
                font-family: 'Carrois Gothic', sans-serif;
            }

            .market-update-block h4 {
                font-size: 1.2em;
                color: #fff;
                margin: 0.3em 0em;
                font-family: 'Carrois Gothic', sans-serif;
            }

            .market-update-block p {
                color: #fff;
                font-size: 0.8em;
                line-height: 1.8em;
            }

            .market-update-block.clr-block-1 {
                background: #68ae00;
                margin-right: 0.8em;
                box-shadow: 0 2px 5px 0 rgba(0, 0, 0, 0.16), 0 2px 10px 0 rgba(0, 0, 0, 0.12);
                transition: 0.5s all;
                -webkit-transition: 0.5s all;
                -moz-transition: 0.5s all;
                -o-transition: 0.5s all;
            }

            .market-update-block.clr-block-2 {
                background: #FC8213;
                margin-right: 0.8em;
                box-shadow: 0 2px 5px 0 rgba(0, 0, 0, 0.16), 0 2px 10px 0 rgba(0, 0, 0, 0.12);
                transition: 0.5s all;
                -webkit-transition: 0.5s all;
                -moz-transition: 0.5s all;
                -o-transition: 0.5s all;
            }

            .market-update-block.clr-block-3 {
                background: #337AB7;
                box-shadow: 0 2px 5px 0 rgba(0, 0, 0, 0.16), 0 2px 10px 0 rgba(0, 0, 0, 0.12);
                transition: 0.5s all;
                -webkit-transition: 0.5s all;
                -moz-transition: 0.5s all;
                -o-transition: 0.5s all;
            }

            .market-update-block.clr-block-4 {
                background: #999;
                box-shadow: 0 2px 5px 0 rgba(0, 0, 0, 0.16), 0 2px 10px 0 rgba(0, 0, 0, 0.12);
                transition: 0.5s all;
                -webkit-transition: 0.5s all;
                -moz-transition: 0.5s all;
                -o-transition: 0.5s all;
            }

            .market-update-block.clr-block-1:hover {
                background: #3C3C3C;
                transition: 0.5s all;
                -webkit-transition: 0.5s all;
                -moz-transition: 0.5s all;
                -o-transition: 0.5s all;
            }

            .market-update-block.clr-block-2:hover {
                background: #3C3C3C;
                transition: 0.5s all;
                -webkit-transition: 0.5s all;
                -moz-transition: 0.5s all;
                -o-transition: 0.5s all;
            }

            .market-update-block.clr-block-3:hover {
                background: #3C3C3C;
                transition: 0.5s all;
                -webkit-transition: 0.5s all;
                -moz-transition: 0.5s all;
                -o-transition: 0.5s all;
            }

            .market-update-block.clr-block-4:hover {
                background: #3C3C3C;
                transition: 0.5s all;
                -webkit-transition: 0.5s all;
                -moz-transition: 0.5s all;
                -o-transition: 0.5s all;
            }

        .market-update-right i.fa.fa-file-text-o {
            font-size: 3em;
            color: #68AE00;
            width: 80px;
            height: 80px;
            background: #fff;
            text-align: center;
            border-radius: 49px;
            -webkit-border-radius: 49px;
            -moz-border-radius: 49px;
            -o-border-radius: 49px;
            line-height: 1.7em;
        }

        .market-update-right i.fa.fa-eye {
            font-size: 3em;
            color: #FC8213;
            width: 80px;
            height: 80px;
            background: #fff;
            text-align: center;
            border-radius: 49px;
            -webkit-border-radius: 49px;
            -moz-border-radius: 49px;
            -o-border-radius: 49px;
            line-height: 1.7em;
        }

        .market-update-right i.fa.fa-envelope-o {
            font-size: 3em;
            color: #337AB7;
            width: 80px;
            height: 80px;
            background: #fff;
            text-align: center;
            border-radius: 49px;
            -webkit-border-radius: 49px;
            -moz-border-radius: 49px;
            -o-border-radius: 49px;
            line-height: 1.7em;
        }

        .market-update-left {
            padding: 0px;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="page-content" style="margin-bottom: 15.8%;">

        <div class="market-updates">
            <div class="col-md-4 market-update-gd">
                <div class="market-update-block clr-block-1">
                    <div class="col-md-8 market-update-left">

                        <h2><a href="utable.aspx" style="color: white">Manage User</a></h2>

                    </div>
                    <div class="col-md-4 market-update-right">
                        <i class="fa fa-file-text-o"></i>
                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>
            <div class="col-md-4 market-update-gd">
                <div class="market-update-block clr-block-2">
                    <div class="col-md-8 market-update-left">

                        <h2><a href="toll_transaction.aspx" style="color: white">Toll-transaction</a></h2>

                    </div>
                    <div class="col-md-4 market-update-right">
                        <i class="fa fa-eye"></i>
                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>
            <div class="col-md-4 market-update-gd" style="margin-top: 4%">
                <div class="market-update-block clr-block-3">
                    <div class="col-md-8 market-update-left">

                        <h2><a href="contact_table.aspx" style="color: white">Contact</a></h2>

                    </div>
                    <div class="col-md-4 market-update-right">
                        <i class="fa fa-envelope-o"></i>
                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>

            <div class="col-md-4 market-update-gd" style="margin-top: 4%">
                <div class="market-update-block clr-block-4">
                    <div class="col-md-8 market-update-left">

                        <h2><a href="transaction_table.aspx" style="color: white">Recharge</a></h2>

                    </div>
                    <div class="col-md-4 market-update-right">
                        <i class="fa fa-file-text-o"></i>
                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>

            <div class="clearfix"></div>
        </div>

    </div>

</asp:Content>

