using AECEM.DALEntity;
using System;
using System.Data.Entity.Migrations;
using System.Linq;
using System.Linq.Expressions;
using System.Data.Entity;

namespace AECEM.DAL
{
    public partial class BaseDAL<T> where T : class, new()
    {
        private DbContext dbContext = DbContextFactory.Create();
        public void Add(T t)
        {
            dbContext.Set<T>().Add(t);
        }

        public void Delete(T t)
        {
            dbContext.Set<T>().Remove(t);
        }

        public void Update(T t)
        {
            dbContext.Set<T>().AddOrUpdate(t);
        }

        public IQueryable<T> GetModels(Expression<Func<T, bool>> whereLambda)
        {
            return dbContext.Set<T>().Where(whereLambda);
        }

        public bool SaveChanges()
        {
            return dbContext.SaveChanges() > 0;
        }

    }
}
