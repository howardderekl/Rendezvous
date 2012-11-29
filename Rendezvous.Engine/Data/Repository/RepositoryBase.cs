using System;
using System.Data.Linq;
using System.Linq;
using System.Linq.Expressions;
using Rendezvous.Engine.Data.Entity;
using Rendezvous.Engine.Data.Interfaces;

namespace Rendezvous.Engine.Data.Repository
{
	public class RepositoryBase<TEntity, TPrimaryKey> where TEntity : class
	{
		protected static RendezvousDataClassesDataContext Db
		{ get { return DbConnection.GetContext(); } }

		protected static IDataRepository Repo
		{ get { return DbConnection.GetRepository(); } }

		protected static RendezvousDataClassesDataContext GetNewDbConnection()
		{
			return DbConnection.GetNewContext();
		}

		public static TEntity GetByID(TPrimaryKey id)
		{
			var table = Db.GetTable<TEntity>();
			var mapping = Db.Mapping.GetTable(typeof(TEntity));
			var pkfield = mapping.RowType.DataMembers.SingleOrDefault(d => d.IsPrimaryKey);
			if (pkfield == null)
				throw new Exception(String.Format("Table {0} does not contain a Primary Key field", mapping.TableName));
			var param = Expression.Parameter(typeof(TEntity), "e");
			var predicate =
				Expression.Lambda<Func<TEntity, bool>>(
					Expression.Equal(Expression.Property(param, pkfield.Name), Expression.Constant(id)), param);
			return table.SingleOrDefault(predicate);
		}

		public static Table<TEntity> GetAll()
		{
			return Db.GetTable<TEntity>();
		}

		public static void Insert(TEntity entity)
		{
			Db.GetTable<TEntity>().InsertOnSubmit(entity);
		}

		public static void Delete(TEntity entity)
		{
			Db.GetTable<TEntity>().DeleteOnSubmit(entity);
		}

	}
}
