<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddFeedback.aspx.cs" Inherits="FeedbackSystemClient.AddFeedback" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Add Feedback</title>
    <link href="lib/twitter-bootstrap/css/bootstrap.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style2 {
            width: 56%;
            height: 152px;
        }

        .auto-style3 {
            width: 391px;
            height: 31px;
        }

        .auto-style4 {
            height: 31px;
        }

        .box {
            width: 500px;
            padding: 20px;
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%,-50%);
            background-color: gainsboro;
            text-align: center;
            height: 500px;
            border-radius: 15px;
        }

        .diff {
            margin-bottom: 20px;
            margin-left: 10px;
        }

        .submitbtn {
            width: 150px;
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
    <div class="msg">
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    </div>
    <form id="form1" runat="server">
       <div>
           <div class="form-group diff">
                &nbsp;
                <asp:Label ID="Label2" runat="server" Text="Product's Name:"></asp:Label>
                <asp:TextBox class="form-control" ID="TextBox1" runat="server" Width="350px"></asp:TextBox>
            </div>
            <div class="form-group diff">
                &nbsp;
                <asp:Label ID="Label3" runat="server" Text="Product's Category:"></asp:Label>
                <asp:TextBox class="form-control" ID="TextBox2" runat="server" Width="350px"></asp:TextBox>
            </div>
            <div class="form-group diff">
                &nbsp;
                <asp:Label ID="Label5" runat="server" Text="Product's Price:"></asp:Label>
                 <asp:TextBox class="form-control" ID="TextBox3" TextMode="Number" runat="server" Width="350px"></asp:TextBox>
            </div>
            <div class="form-group diff">
                &nbsp;
                <asp:Label ID="Label6" runat="server" Text="Product's Feedback:"></asp:Label>
                <asp:TextBox class="form-control" ID="TextBox4" runat="server" Width="350px"></asp:TextBox>
            </div>
            <div class="form-group diff">
                &nbsp;
                <asp:Label ID="Label7" runat="server" Text="Product's Ratings:"></asp:Label>
                <asp:TextBox class="form-control" ID="TextBox5" runat="server" Width="350px"></asp:TextBox>
            </div>
                <asp:Button class="btn btn-success submitbtn diff" ID="Button1" runat="server" OnClick="Button1_Click" Text="Add Feedback" />
                <asp:Button class="btn btn-secondary submitbtn diff" ID="BackButton" runat="server" Text="Back" OnClick="BackButton_Click"></asp:Button>
        </div>
    </form>
</body>
</html>
