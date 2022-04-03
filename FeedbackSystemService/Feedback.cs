using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Runtime.Serialization;

namespace FeedbackSystemService
{
    [DataContract]
    public class Feedback
    {
        private int Id;
        private string productName;
        private string productCategory;
        private int productPrice;
        private string productFeedback;
        private int productRatings;

        [DataMember]
        public int ProductID
        {
            get { return Id; }
            set { Id = value; }
        }

        [DataMember]
        public string ProductName
        {
            get { return productName; }
            set { productName = value; }
        }

        [DataMember]
        public string ProductCategory
        {
            get { return productCategory; }
            set { productCategory = value; }
        }

        [DataMember]
        public int ProductPrice
        {
            get { return productPrice; }
            set { productPrice = value; }
        }

        [DataMember]
        public string ProductFeedback
        {
            get { return productFeedback; }
            set { productFeedback = value; }
        }

        [DataMember]
        public int ProductRatings
        {
            get { return productRatings; }
            set { productRatings = value; }
        }
    }
}
