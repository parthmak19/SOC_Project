using FeedbackSystemService;
using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;

namespace FeedbackSystemHost
{
    class Program
    {
        static void Main(string[] args)
        {
            Type t = typeof(FeedbackService);
            //Uri tcp = new Uri("net.tcp://localhost:8010/FeedbackService");
            Uri http = new Uri("http://localhost:8000/FeedbackService");
            ServiceHost host = new ServiceHost(t, http);
            host.Open();
            Console.WriteLine("Service Running!" + "  " + DateTime.Now);
            Console.ReadLine();
            host.Close();
        }
    }
}
