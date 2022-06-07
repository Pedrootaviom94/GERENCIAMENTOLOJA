using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Hosting;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.Hosting;
using Microsoft.Extensions.Logging;

namespace GERENCIAMENTOLOJA {
public class Comentatio { 

     public int IdComentario {get;set;}
     public int IdProduto {get;set;}
     public int IdUsuario {get;set;}
     public string TextoComentario {get;set;}
     public DateTime DataCriacao {get;set;}
    

}

}