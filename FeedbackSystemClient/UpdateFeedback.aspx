<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UpdateFeedback.aspx.cs" Inherits="FeedbackSystemClient.UpdateFeedback" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Update Feedback</title>
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
                <asp:Label ID="Label1" runat="server" Text="Product's ID:"></asp:Label>
                <asp:TextBox class="form-control" ID="id" runat="server" placeholder="Enter Product's ID to update"></asp:TextBox>
            </div>
            <div class="form-group diff">
                <asp:Label ID="Label2" runat="server" Text="Product's Name:"></asp:Label>
                <asp:TextBox class="form-control" ID="name" runat="server" placeholder="Enter Product's Name"></asp:TextBox>
            </div>
            <div class="form-group diff">
                <asp:Label ID="Label3" runat="server" Text="Product's Category:"></asp:Label>
                <asp:TextBox class="form-control" ID="Category" runat="server" placeholder="Enter Product's Category"></asp:TextBox>
            </div>
            <div class="form-group diff">
                <asp:Label ID="Label5" runat="server" Text="Product's Price:"></asp:Label>
                <asp:TextBox class="form-control" ID="price" runat="server" placeholder="Enter Product's Price"></asp:TextBox>
            </div>
            <div class="form-group diff">
                <asp:Label ID="Label6" runat="server" Text="Product's Feedback:"></asp:Label>
                <asp:TextBox class="form-control" ID="Feedback" runat="server" placeholder="Enter Product's Feedback"></asp:TextBox>
            </div>
            <div class="form-group diff">
                <asp:Label ID="Label7" runat="server" Text="Product's Ratings:"></asp:Label>
                <asp:TextBox class="form-control" ID="ratings" runat="server" placeholder="Enter Product's Ratings"></asp:TextBox>
            </div>
            <p>
                <asp:Button  ID="UpdateFeedbackButton" runat="server" Text="Update" OnClick="UpdateFeedback_button"></asp:Button>
                <asp:Button  ID="BackButton" runat="server" Text="Back" OnClick="BackButton_Click"></asp:Button>
            </p>
        </div>
    </form>
</body>
</html>
