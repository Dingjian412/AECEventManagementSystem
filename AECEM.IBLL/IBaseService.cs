using System;
using System.Linq;
using System.Linq.Expressions;

namespace AECEM.IBLL
{
    public partial interface IBaseService<T> where T : class, new()
    {
        bool Add(T t);

        bool Delete(T t);

        bool Update(T t);

        IQueryable<T> GetModels(Expression<Func<T, bool>> whereLambda);
    }
}
