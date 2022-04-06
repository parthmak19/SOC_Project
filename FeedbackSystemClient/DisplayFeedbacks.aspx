<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DisplayFeedbacks.aspx.cs" Inherits="FeedbackSystemClient.Display_Reviews" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Display Feedbacks</title>
    <link href="lib/twitter-bootstrap/css/bootstrap.css" rel="stylesheet" />
    <style>
        .box {
            width: 500px;
            padding: 40px;
            position: absolute;
            top: 40%;
            left: 50%;
            transform: translate(-50%,-50%);
            background-color: gainsboro;
            text-align: center;
            height: 400px;
            border-radius: 15px;
        }

        .diff {
            margin-bottom: 20px;
        }

        .submitbtn {
            width: 100%;
            margin-bottom: 20px;
        }

        .msg {
            width: 900px;
            padding-top: 20px;
            margin: auto;
            font-size: 22px;
            font-weight: 700;
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" class="container-fluid align-content-center my-3" runat="server">
        <div style="text-align: center" class="centered-table">
            <asp:GridView ID="GridView1" runat="server" Height="252px" Width="1043px" HorizontalAlign="Center" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
            <br />
            <br />
            <div>
                <asp:Button class="btn btn-secondary submitbtn diff" ID="BackButton" runat="server" Text="Back" OnClick="BackButton_Click " Width="150px"></asp:Button>
            </div>
        </div>
    </form>
</body>
</html>
