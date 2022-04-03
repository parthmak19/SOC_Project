using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FeedbackSystemService;

namespace FeedbackSystemClient
{
    public partial class UpdateFeedback : System.Web.UI.Page
    {
        //int Id;
        protected void Page_Load(object sender, EventArgs e)
        {
            Label4.Text = "";
            //Id = Int32.Parse(Request.QueryString["Id"]);
        }

        protected void UpdateFeedback_button(object sender, EventArgs e)
        {
            FeedbackServiceReference.FeedbackServiceClient client = new FeedbackServiceReference.FeedbackServiceClient();
            Feedback feedback = new Feedback();
            feedback.ProductID = Convert.ToInt32(id.Text);
            feedback.ProductName = name.Text;
            feedback.ProductCategory = Category.Text;
            feedback.ProductFeedback = Feedback.Text;
            feedback.ProductRatings = Convert.ToInt32(ratings.Text);
            string msg = client.UpdateFeedback(feedback);
            Label4.Text = msg;
        }

        protected void BackButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx");
        }
    }
}