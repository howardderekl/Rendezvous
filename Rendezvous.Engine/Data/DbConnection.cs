using System;
using System.Configuration;
using System.Web;
using Rendezvous.Engine.Data.Entity;
using Rendezvous.Engine.Data.Interfaces;

namespace Rendezvous.Engine.Data
{
	public class DbConnection
	{
		[ThreadStatic]
		private static RendezvousDataClassesDataContext m_db;

		[ThreadStatic]
		private static IDataRepository m_repo;
		private static string ConnStringName = "RendezvousConnectionString";
		const string repoHashKey = "repo";
		const string dbHashKey = "db";

		public static RendezvousDataClassesDataContext GetNewContext()
		{
			return new RendezvousDataClassesDataContext(ConfigurationManager.ConnectionStrings[ConnStringName].ConnectionString);
		}

		public static RendezvousDataClassesDataContext GetContext()
		{
			if (HttpContext.Current != null)
			{
				if (HttpContext.Current.Items[dbHashKey] == null)
					HttpContext.Current.Items[dbHashKey] =
						new RendezvousDataClassesDataContext(ConfigurationManager.ConnectionStrings[ConnStringName].ConnectionString);
				return (RendezvousDataClassesDataContext)HttpContext.Current.Items[dbHashKey];
			}
			else
			{
				return m_db ??
							 (m_db = new RendezvousDataClassesDataContext(ConfigurationManager.ConnectionStrings[ConnStringName].ConnectionString));
			}
		}

		public static void ResetContext()
		{
			m_db = null;
			if (HttpContext.Current != null)
				HttpContext.Current.Items[dbHashKey] = null;
		}

		public static void ResetRepository()
		{
			m_repo = null;
			if (HttpContext.Current != null)
				HttpContext.Current.Items[repoHashKey] = null;
		}

		public static IDataRepository GetRepository()
		{
			if (HttpContext.Current != null)
			{
				if (HttpContext.Current.Items[repoHashKey] == null)
					HttpContext.Current.Items[repoHashKey] = new DataRepository(GetContext());
				return (IDataRepository)HttpContext.Current.Items[repoHashKey];
			}
			else
			{
				return m_repo ?? (m_repo = new DataRepository(GetContext()));
			}
		}

		public static IDataRepository GetNewRepository()
		{
			return new DataRepository(GetNewContext());
		}
	}
}

