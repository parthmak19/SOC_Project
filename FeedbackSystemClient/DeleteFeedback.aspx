<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DeleteFeedback.aspx.cs" Inherits="FeedbackSystemClient.DeleteFeedback" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Delete Feedback</title>
   <style>
        .box{
            width: 500px;
            padding: 40px;
            position: absolute;
            top: 30%;
            left: 50%;
            transform: translate(-50%,-50%);
            background-color: gainsboro;
            text-align: center;
            height:250px;
            border-radius:15px;
        }
        .diff{
            margin-bottom:20px;
        }
        .submitbtn{
            width: 100%;
            margin-bottom: 20px;
        }
        .msg{
            width:900px;
            padding-top: 20px;
            margin: auto;
            font-size: 22px;
            font-weight:700;
            text-align: center;
        }
    </style>
</head>
<body>
     <div class="msg">
         <asp:Label ID="Label4" runat="server" Text=""></asp:Label>
    </div>
    <form id="form1" runat="server">
        <div>
            <div class="form-group diff">
                <asp:Label ID="Label1" runat="server" Text="Product's ID:"></asp:Label>
                <asp:TextBox class="form-control" ID="id" runat="server" placeholder="Enter Product's ID to delete"></asp:TextBox>
            </div>
            <br />
            <asp:Button ID="DeleteFeedbackButton" runat="server" Text="Delete" OnClick="DeleteFeedback_Button"></asp:Button>
            <asp:Button ID="BackButton" runat="server" Text="Back" OnClick="BackButton_Click"></asp:Button>
        </div>
    </form>
</body>
</html>
