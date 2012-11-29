using System.Collections.Generic;
using System.Linq;

namespace Rendezvous.Engine.Data.Interfaces
{
    public interface IDataRepository
    {
        IQueryable<TEntity> QueryEntity<TEntity>() where TEntity : class;
        TEntity QueryById<TEntity, TPrimaryKey>(TPrimaryKey key) where TEntity : class;
    	void InsertOnSubmit<TEntity>(TEntity entity) where TEntity : class;
		void InsertAllOnSubmit<TEntity>(IEnumerable<TEntity> entity) where TEntity : class;
		void DeleteOnSubmit<TEntity>(TEntity entity) where TEntity : class;
		void DeleteAllOnSubmit<TEntity>(IEnumerable<TEntity> entities) where TEntity : class;
    	void SubmitChanges();
    }
}
