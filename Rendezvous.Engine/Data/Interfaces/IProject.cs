using System.Data.Linq.Mapping;

namespace Rendezvous.Engine.Data.Entity
{
    public interface IProject
    {
        [Column(Storage = "_ProjectKey", AutoSync = AutoSync.OnInsert, DbType = "Int NOT NULL IDENTITY", IsPrimaryKey = true, IsDbGenerated = true)]
        int ProjectKey { get; set; }

        [Column(Storage = "_ProjectTypeKey", DbType = "Int NOT NULL")]
        int ProjectTypeKey { get; set; }

        [Column(Storage = "_Active", DbType = "Bit NOT NULL")]
        bool Active { get; set; }

        [Column(Storage = "_Title", DbType = "VarChar(100) NOT NULL", CanBeNull = false)]
        string Title { get; set; }

        [Column(Storage = "_Description", DbType = "VarChar(MAX) NOT NULL", CanBeNull = false)]
        string Description { get; set; }

        [Column(Storage = "_StartDate", DbType = "DateTime NOT NULL")]
        System.DateTime StartDate { get; set; }

        [Column(Storage = "_CompletionDate", DbType = "DateTime NOT NULL")]
        System.DateTime CompletionDate { get; set; }
    }
}