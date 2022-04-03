using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FeedbackSystemService
{
    public class FeedbackService : IFeedbackService
    {
        public string AddFeedback(Feedback feedback)
        {
            SqlConnection con = new SqlConnection(@"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=FeedbackSystem;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");
            con.Open();
            SqlCommand cmd = new SqlCommand("INSERT INTO Feedbacks (Name,Category,Price,Feedback,Ratings) VALUES (@Name,@Category,@Price,@Feedback,@Ratings)", con);
            cmd.Parameters.AddWithValue("@Name", feedback.ProductName);
            cmd.Parameters.AddWithValue("@Category", feedback.ProductCategory);
            cmd.Parameters.AddWithValue("@Price", feedback.ProductPrice);
            cmd.Parameters.AddWithValue("@Feedback", feedback.ProductFeedback);
            cmd.Parameters.AddWithValue("@Ratings", feedback.ProductRatings);
            cmd.ExecuteNonQuery();
            con.Close();
            return "Feedback added successfully!";
        }

        public string UpdateFeedback(Feedback feedback)
        {
            SqlConnection con = new SqlConnection(@"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=FeedbackSystem;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");
            con.Open();
            SqlCommand command = new SqlCommand("SELECT * FROM Feedbacks WHERE Id = @Id", con);
            command.Connection = con;
            command.Parameters.AddWithValue("@Id", feedback.ProductID);
            SqlDataReader reader = command.ExecuteReader();
            if (reader.HasRows)
            {
                con.Close();
                SqlCommand cmd = new SqlCommand("UPDATE Feedbacks SET Name = @Name, @Category = Category, @Price = Price, @Feedback = Feedback, @Ratings = Ratings WHERE Id = @Id", con);
                cmd.Parameters.AddWithValue("@Id", feedback.ProductID);
                cmd.Parameters.AddWithValue("@Name", feedback.ProductName);
                cmd.Parameters.AddWithValue("@Category", feedback.ProductCategory);
                cmd.Parameters.AddWithValue("@Price", feedback.ProductPrice);
                cmd.Parameters.AddWithValue("@Feedback", feedback.ProductFeedback);
                cmd.Parameters.AddWithValue("@Ratings", feedback.ProductRatings);
                con.Open();
                cmd.Connection = con;
                cmd.ExecuteNonQuery();
                con.Close();
                return "Feedback updated successfully!";
            }
            else
            {
                con.Close();
                return "Feedback with ID = " + feedback.ProductID + " is not present!!";
            }
        }

        public string DeleteFeedback(int Id)
        {
            SqlConnection con = new SqlConnection(@"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=FeedbackSystem;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");
            con.Open();
            SqlCommand command = new SqlCommand("SELECT * FROM Feedbacks WHERE Id = @Id", con);
            command.Connection = con;
            command.Parameters.AddWithValue("@Id", Id);
            SqlDataReader reader = command.ExecuteReader();
            if(reader.HasRows)
            {
                con.Close();
                SqlCommand cmd = new SqlCommand("DELETE FROM Feedbacks WHERE Id = @Id", con);
                cmd.Parameters.AddWithValue("@Id", Id);
                cmd.Connection = con;
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                return "Feedback deleted successfully!";
            }
            else
            {
                return "Feedback with ID = " + Id + " is not present!!";
            }
        }

        public Feedback GetFeedback(int Id)
        {
            SqlConnection con = new SqlConnection(@"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=FeedbackSystem;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = "SELECT Id, Name, Category, Price, Feedback, Ratings WHERE Id = @Id";
            SqlParameter p = new SqlParameter("@Id", Id);
            cmd.Parameters.Add(p);
            con.Open();
            SqlDataReader reader = cmd.ExecuteReader();
            Feedback feedback = new Feedback();
            while (reader.Read())
            {
                feedback.ProductID = reader.GetInt32(0);
                feedback.ProductName = reader.GetString(1);
                feedback.ProductCategory = reader.GetString(2);
                feedback.ProductPrice = reader.GetInt32(3);
                feedback.ProductFeedback = reader.GetString(4);
                feedback.ProductRatings = reader.GetInt32(5);
            }
            reader.Close();
            con.Close();
            return feedback;
        }

        public DataSet GetFeedbacks()
        {
            SqlDataAdapter sda = new SqlDataAdapter("SELECT Id, Name, Category, Price, Feedback, Ratings", 
                @"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=FeedbackSystem;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");
            DataSet ds = new DataSet();
            sda.Fill(ds, "Feedbacks");
            return ds;
        }
    }
}
