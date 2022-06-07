using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Hosting;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.Hosting;
using Microsoft.Extensions.Logging;

namespace GERENCIAMENTOLOJA.Domains{
    
public class PedidoProduto { 

     
     public int IdPedidoProduto{get;set;}
     public int IdPedido {get;set;}
     public int  IdProduto  {get;set;}
     public int Quantidade {get;set;}

}

}