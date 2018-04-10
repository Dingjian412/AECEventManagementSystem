using AECEM.DALEntity;
using System.Data.Entity;
using System.Runtime.Remoting.Messaging;

namespace AECEM.DAL
{
    public partial class DbContextFactory
    {
        public static DbContext Create()
        {
            DbContext dbContext = CallContext.GetData("DbContext") as DbContext;
            if (dbContext == null)
            {
                dbContext = new AECEventManagementEntities();
                CallContext.SetData("DbContext", dbContext);
            }

            return dbContext;
        }
    }
}
