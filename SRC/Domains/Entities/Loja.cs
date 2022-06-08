using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Hosting;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.Hosting;
using Microsoft.Extensions.Logging;

 namespace GERENCIAMENTOLOJA.Domains.Entities {
public class Loja { 

     public int IdLoja {get;set;}  
     public string IdUsuario {get;set;}
     public string Nome {get;set;}
     public string Descricao {get;set;}

}

}