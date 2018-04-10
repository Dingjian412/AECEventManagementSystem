using System.Linq;
using System.Linq.Expressions;
using System;

namespace AECEM.IDAL
{
    public partial interface IBaseDAL<T> where T : class, new()
    {
        void Add(T t);
        void Delete(T t);
        void Update(T t);
        IQueryable<T> GetModels(Expression<Func<T,bool>> whereLambda);

        bool SaveChanges();
    }
}
