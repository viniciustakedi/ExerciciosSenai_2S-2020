using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace Senai.InLock.WebApi.CodeFirst.Domains
{   
    [Table("TiposUsuario")]
    public class TipoUsuario
    {
        [Key] //Define que é uma chave primaria
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)] //Define o auto-incremento
        public int IdTipoUsuario { get; set; }

        //Define o tipo da coluna do banco de dados
        [Column(TypeName = "VARCHAR(255")]
        //Define que o campo é obrigatório
        [Required (ErrorMessage = "O título do tipo de usuário é obrigatório")]
        public string Titulo { get; set; }


    }
}
