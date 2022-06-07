using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Hosting;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.Hosting;
using Microsoft.Extensions.Logging;

namespace GERENCIAMENTOLOJA {
    
public class Produto { 

     public int IdProduto  {get;set;}
     public int IdLoja{get;set;}
     public string nome {get;set;}
     public string Descricao {get;set;}
     public string UrlImagem {get;set;}
     public double Valor {get;set;}
     public int DisponivelVenda {get;set;}
     public int QuantidadeDisponivel {get;set;}

}

}