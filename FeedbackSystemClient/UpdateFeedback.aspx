<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UpdateFeedback.aspx.cs" Inherits="FeedbackSystemClient.UpdateFeedback" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Update Feedback</title>
    <link href="lib/twitter-bootstrap/css/bootstrap.css" rel="stylesheet" />
    <style>
        .box {
            width: 500px;
            padding: 40px;
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
    <div class="msg">
        <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
    </div>
    <form id="form1" runat="server">
        <div>
            <div class="form-group diff">
                &nbsp;
                <asp:Label ID="Label1" runat="server" Text="Product's ID:"></asp:Label>
                &nbsp;<asp:TextBox class="form-control" ID="id" runat="server" placeholder="Enter Product's ID" Width="350px"></asp:TextBox>
            </div>
            <div class="form-group diff">
                &nbsp;
                <asp:Label ID="Label2" runat="server" Text="Product's Name:"></asp:Label>
                <asp:TextBox class="form-control" ID="name" runat="server" Width="350px"></asp:TextBox>
            </div>
            <div class="form-group diff">
                &nbsp;
                <asp:Label ID="Label3" runat="server" Text="Product's Category:"></asp:Label>
                <asp:TextBox class="form-control" ID="Category" runat="server" Width="350px"></asp:TextBox>
            </div>
            <div class="form-group diff">
                &nbsp;
                <asp:Label ID="Label5" runat="server" Text="Product's Price:"></asp:Label>
                <asp:TextBox class="form-control" ID="price" runat="server" Width="350px"></asp:TextBox>
            </div>
            <div class="form-group diff">
                &nbsp;
                <asp:Label ID="Label6" runat="server" Text="Product's Feedback:"></asp:Label>
                <asp:TextBox class="form-control" ID="Feedback" runat="server" Width="350px"></asp:TextBox>
            </div>
            <div class="form-group diff">
                &nbsp;
                <asp:Label ID="Label7" runat="server" Text="Product's Ratings:"></asp:Label>
                <asp:TextBox class="form-control" ID="ratings" runat="server" Width="350px"></asp:TextBox>
            </div>
            <p>
                <asp:Button class="btn btn-warning submitbtn diff" ID="UpdateFeedbackButton" runat="server" Text="Update" OnClick="UpdateFeedback_button" Width="150px"></asp:Button>
                <asp:Button class="btn btn-secondary submitbtn diff" ID="BackButton" runat="server" Text="Back" OnClick="BackButton_Click" Width="150px"></asp:Button>
            </p>
        </div>
    </form>
</body>
</html>
