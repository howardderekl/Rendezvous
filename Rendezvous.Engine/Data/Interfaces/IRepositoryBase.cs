using System.Linq;

namespace Rendezvous.Engine.Data.Interfaces
{
    public interface IRepositoryBase<TEntity, TPrimaryKey> where TEntity : class
    {
        TEntity GetById(TPrimaryKey id);
        IQueryable<TEntity> GetAll();
        void Insert(TEntity entity);
        void Delete(TEntity entity);
    }
}