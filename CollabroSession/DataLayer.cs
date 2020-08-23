using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CollabroSession
{
    public class DataLayer
    {
        public DataClasses1DataContext da=new DataClasses1DataContext(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\CollabDB.mdf;Integrated Security=True");
    }
}