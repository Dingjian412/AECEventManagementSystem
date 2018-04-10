using AECEM.IDAL;
using System;
using System.Linq;
using System.Linq.Expressions;

namespace AECEM.BLL
{
    public abstract partial class BaseService<T> where T : class, new()
    {
        public abstract void SetDal();
        public IBaseDAL<T> Dal { get; set; }
        public BaseService()
        {
            SetDal();
        }

        public bool Add(T t)
        {
            Dal.Add(t);
            return Dal.SaveChanges();
        }

        public bool Delete(T t)
        {
            Dal.Delete(t);
            return Dal.SaveChanges();
        }

        public bool Update(T t)
        {
            Dal.Update(t);
            return Dal.SaveChanges();
        }

        public IQueryable<T> GetModels(Expression<Func<T, bool>> whereLabda)
        {
            return Dal.GetModels(whereLabda);
        }
    }
}
