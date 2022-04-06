using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FeedbackSystemService;

namespace FeedbackSystemClient
{
    public partial class AddFeedback : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = "";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            FeedbackServiceReference.FeedbackServiceClient client = new FeedbackServiceReference.FeedbackServiceClient();
            Feedback feedback = new Feedback();
            feedback.ProductName = TextBox1.Text;
            feedback.ProductCategory = TextBox2.Text;
            feedback.ProductPrice = Convert.ToInt32(TextBox3.Text);
            feedback.ProductFeedback = TextBox4.Text;
            feedback.ProductRatings = Convert.ToInt32(TextBox5.Text);
            string msg = client.AddFeedback(feedback);
            Label1.Text = msg;
        }

        protected void BackButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx");
        }
    }
}