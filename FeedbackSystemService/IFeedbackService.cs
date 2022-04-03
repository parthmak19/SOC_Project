using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;

namespace FeedbackSystemService
{
    [ServiceContract]
    public interface IFeedbackService
    {
        [OperationContract]
        string AddFeedback(Feedback feedback);

        [OperationContract]
        string UpdateFeedback(Feedback feedback);

        [OperationContract]
        string DeleteFeedback(int Id);

        [OperationContract]
        DataSet GetFeedbacks();

        [OperationContract]
        Feedback GetFeedback(int Id);
    }
}
