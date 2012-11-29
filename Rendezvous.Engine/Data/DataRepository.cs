using System;
using System.Collections.Generic;
using System.Data.Linq;
using System.Linq;
using System.Linq.Expressions;
using Rendezvous.Engine.Data.Entity;
using Rendezvous.Engine.Data.Interfaces;

namespace Rendezvous.Engine.Data
{
    public class DataRepository: IDataRepository
    {
        private readonly RendezvousDataClassesDataContext Db;

        public DataRepository(RendezvousDataClassesDataContext dataContext)
        {
            Db = dataContext;
        }

        public DataRepository()
        {
            Db = DbConnection.GetContext();
        }

		public IQueryable<TEntity> QueryEntity<TEntity>() where TEntity : class
        {
            return Db.GetTable<TEntity>(); //.AsQueryable(); //get the queryable entity table...
        }

        public TEntity QueryById<TEntity, TPrimaryKey>(TPrimaryKey id) where TEntity:class
        {
            var conn = Db;
            var table = conn.GetTable<TEntity>();
            var mapping = conn.Mapping.GetTable(typeof(TEntity));
            var pkfield = mapping.RowType.DataMembers.SingleOrDefault(d => d.IsPrimaryKey);
            if (pkfield == null)
                throw new Exception(String.Format("Table {0} does not contain a Primary Key field", mapping.TableName));
            var param = Expression.Parameter(typeof(TEntity), "e");
            var predicate =
                Expression.Lambda<Func<TEntity, bool>>(
                    Expression.Equal(Expression.Property(param, pkfield.Name), Expression.Constant(id)), param);
            return table.SingleOrDefault(predicate);
        }

    	public void InsertOnSubmit<TEntity>(TEntity entity) where TEntity : class
    	{
    		Db.GetTable<TEntity>().InsertOnSubmit(entity);
    	}

    	public void InsertAllOnSubmit<TEntity>(IEnumerable<TEntity> entities) where TEntity : class
    	{
			Db.GetTable<TEntity>().InsertAllOnSubmit(entities);
    	}

    	public void DeleteOnSubmit<TEntity>(TEntity entity) where TEntity : class
    	{
			Db.GetTable<TEntity>().DeleteOnSubmit(entity);
    	}

		public void DeleteAllOnSubmit<TEntity>(IEnumerable<TEntity> entities) where TEntity : class
    	{
			Db.GetTable<TEntity>().DeleteAllOnSubmit(entities);
    	}

    	public void SubmitChanges()
    	{
    		Db.SubmitChanges();
    	}
    }
}
