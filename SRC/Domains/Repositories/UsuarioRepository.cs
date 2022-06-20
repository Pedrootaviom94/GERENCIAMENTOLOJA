using System;
using System.Collections.Generic;
using MySqlConnector;

namespace GERENCIAMENTOLOJA.Domains.Repositories{

public class UsuarioRepository{

private readonly DatabaseConfig databaseConfig;

		public UsuarioRepository(DatabaseConfig databaseConfig)
		{
			this.databaseConfig = databaseConfig;
		}
        private const string inserir = "INSERT INTO Tarefa (Nome, Email, TipoUsuairo, Senha, Contato)";

        private const string atualizar = @"UPDATE Tarefa SET Nome = @Nome, Email = @Email, TipoUsuario = @TipoUsuario, Senha = @Senha, Contato = @contato ";

        private const string deletar = @"DELETE FROM Tarefa WHERE Nome = @Nome, Email = @Email, TipoUsuario = @TipoUsuario, Senha = @Senha, Contato = @contato ";

        private const string remover =                                

           public void inserir(Usuario novoUser)
         {
            using var connection = databaseConfig.GetConnection();
            
            string Query = "INSERT INTO USUARIO  (Nome,Email,Senha,Contato,TipoUsuario) VALUES (@Nome,@Email,@Senha,@Contato,@TipoUsuario)";
            //3 preparar o comando
          
           var parametros = new DynamicParameters();

			  parametros.Add("@Nome", novoUser.Nome);
			  parametros.Add("@Email", novoUser.Email);
           parametros.Add("@TipoUsuario", novoUser.TipoUsuario); 
           parametros.Add("@Senha", novoUser.Senha);
           parametros.Add("@Contato", novoUser.Contato);

			  connection.Execute(criar_sql, parametros);

           
         }

         public void atualizar (Usuario user){
             
              using var connection = databaseConfig.GetConnection();
            
            string Query = "INSERT INTO USUARIO  (Nome,Email,Senha,Contato,TipoUsuario) VALUES (@Nome,@Email,@Senha,@Contato,@TipoUsuario)";

           parametros.Add("@Nome", user.Nome);
			  parametros.Add("@Email", user.Email);
           parametros.Add("@TipoUsuario", user.TipoUsuario); 
           parametros.Add("@Senha", user.Senha);
           parametros.Add("@Contato", user.Contato);

           connection.Execute(criar_sql, parametros);

         };

          public void remover(Usuario user){
           
           using var connection = databaseConfig.GetConnection();
			  var parametros = new DynamicParameters();

			  parametros.Add("@Nome", user);
           parametros.Add("@Senha", user);
           parametros.Add("@Contato", user);
           parametros.Add("@TipoUsuario", user);
           parametros.Add("@Email", user);

			  return connection.QueryFirstOrDefault<Usuario>(selecionarPorId_sql, parametros);


          };
         
         public void deletar(Usuario Del)
		{
			 using var connection = databaseConfig.GetConnection();
			
          var parametros = new DynamicParameters();

			 parametros.Add("@Nome", Del);
           parametros.Add("@Senha", Del);
           parametros.Add("@Contato", Del);
           parametros.Add("@TipoUsuario", Del);
           parametros.Add("@Email", Del);

			connection.Execute(deletar, parametros);
		}
         



   
}

