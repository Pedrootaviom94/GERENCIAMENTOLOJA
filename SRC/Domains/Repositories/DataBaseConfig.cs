using System;
using MySqlConnector;
using System.Data.Common;
namespace GERENCIAMENTOLOJA.Domains.Repositories {

public class DataBaseConfig {
    
		public DataBaseConfig( string connectionString)
		{
			ConnectionString = connectionString;
		}
		public string ConnectionString { get; private set; }

		public DbConnection GetConnection() {
			return new MySqlConnection(ConnectionString);
		}

}


}