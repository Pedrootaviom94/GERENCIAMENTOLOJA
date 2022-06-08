using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Hosting;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.Hosting;
using Microsoft.Extensions.Logging;

namespace GERENCIAMENTOLOJA.Domains.Entities {
    
public class Pedido { 

     
     public int IdPedido{get;set;}
     public int IdUsuario {get;set;}
     public DateTime DataPedido  {get;set;}

}

}