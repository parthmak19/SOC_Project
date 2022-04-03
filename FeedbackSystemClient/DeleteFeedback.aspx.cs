using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FeedbackSystemClient
{
    public partial class DeleteFeedback : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label4.Text = "";
        }

        protected void DeleteFeedback_Button(object sender, EventArgs e)
        {
            FeedbackServiceReference.FeedbackServiceClient client = new FeedbackServiceReference.FeedbackServiceClient();
            int Id = Convert.ToInt32(id.Text);
            string msg = client.DeleteFeedback(Id);
            Label4.Text = msg;
        }

        protected void BackButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx");
        }
    }
}