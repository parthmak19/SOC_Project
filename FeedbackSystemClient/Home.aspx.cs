using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FeedbackSystemClient
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=FeedbackSystem;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");
            SqlCommand cmd = new SqlCommand("SELECT Id, Name, Category, Price, Feedback, Ratings FROM Feedbacks", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            sda.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }

        protected void AddFeedback(object sender, EventArgs e)
        {
            Response.Redirect("AddFeedback.aspx");
        }

        protected void UpdateFeedback(object sender, EventArgs e)
        {
            Response.Redirect("UpdateFeedback.aspx");
        }

        protected void DeleteFeedback(object sender, EventArgs e)
        {
            Response.Redirect("DeleteFeedback.aspx");
        }

        protected void DisplayFeedbacks(object sender, EventArgs e)
        {
            Response.Redirect("DisplayFeedbacks.aspx");
        }
    }
}