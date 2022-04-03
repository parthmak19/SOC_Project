<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="FeedbackSystemClient.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Home</title>
    <style>
        .homebtn{
            margin: auto;
            width: 1293px;
            padding-top: 40px;
            padding-bottom: 40px;
        }
        .btn{
            width: 250px;
            margin-left:0px;
            margin-right:20px;
            margin-top: 0px;
        }
        .heading{
            width:900px;
            margin-top:20px;
            margin-bottom:20px;
            margin: auto;
            font-size: 40px;
            font-weight:800;
            text-align: center;
        }
        .centered-table {
            margin-left: auto;
            margin-right: auto
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="heading">
            <asp:Label ID="Label1" runat="server" Text="Feedback System"></asp:Label>
        </div>
        <hr/>
        <div style="text-align:center" class="homebtn">
            &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;           
            &nbsp;
            &nbsp;
            &nbsp;
            <asp:Button class="btn btn-primary btn-lg btn" ID="addFeedback" runat="server" Text="Add Feedback" OnClick="AddFeedback" />
            <asp:Button class="btn btn-primary btn-lg btn" ID="updateFeedback" runat="server" Text="Update Feedback" OnClick="UpdateFeedback"/>
            <asp:Button class="btn btn-primary btn-lg btn" ID="deleteFeedback" runat="server" Text="Delete Feedback" OnClick="DeleteFeedback"/>
            &nbsp;
        </div>
        <hr/>

                <br />
                <br />
         <div style="text-align:center" class="centered-table">
                <asp:GridView ID="GridView1" runat="server" Height="252px" Width="1043px" HorizontalAlign="Center" CellPadding="4" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <%-- <asp:hyperlinkfield datanavigateurlfields="id" datanavigateurlformatstring="updatefeedback.aspx?id={0}" text="update" />--%>
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
             </div>
                <br />
                <br />
                <br />
                <br />
                <br />
        </div>
    </form>
</body>
</html>
