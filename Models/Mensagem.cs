using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Hosting;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.Hosting;
using Microsoft.Extensions.Logging;

namespace GERENCIAMENTOLOJA {
    
public class Mensagens { 

     public int IdMensagem {get;set;}
     public int IdPedido{get;set;}
     public int IdUsuario {get;set;}
     public string Mensagem {get;set;}
     public DateTime DataEnvio  {get;set;}

}

}