using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Hosting;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.Hosting;
using Microsoft.Extensions.Logging;

namespace GERENCIAMENTOLOJA.Domains.Entities {
public class Usuario { 

     public int IdUsuario {get;set;}
     public string Nome {get;set;}
     public string Email {get;set;}
     public string Senha {get;set;}
     public int Contato {get;set;}
     public int TipoUsuario  {get;set;}

}

}