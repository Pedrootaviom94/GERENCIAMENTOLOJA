using System;
using System.Collections.Generic;
using MySqlConnector;

namespace GERENCIAMENTOLOJA.Domains.Entities{

public class UsuarioRepository{

protected const string DadosConexao = "Database = GerenciamentoLojas; Data source = localhost; User Id=root";

public void TestarConexao (){
    MySqlConnection Conexao = new MySqlConnection (DadosConexao);

    Conexao.Open();

    Console.WriteLine("Banco de dados funcionando");

    Conexao.Close();
}
   
}

}