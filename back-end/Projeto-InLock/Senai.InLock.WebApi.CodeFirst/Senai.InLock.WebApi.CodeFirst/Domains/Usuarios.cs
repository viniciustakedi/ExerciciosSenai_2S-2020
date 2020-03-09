using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace Senai.InLock.WebApi.CodeFirst.Domains
{
    [Table("Usuarios")]
    public class Usuarios
    {
         [Key]
         [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int IdUsuario { get; set; }

         [Column(TypeName = "VARCHAR (150)")]
         [Required]
         [DataType(DataType.EmailAddress)]
        public string Email { get; set; }
           
         [Column(TypeName = "VARCHAR (150)")]
         [Required]
         [DataType(DataType.Password)]
         [StringLength(30, MinimumLength = 5, ErrorMessage ="A senha deve conter entre e 30 caracteres")]
        public string Senha { get; set; }
             
        public int IdTipoUsuario { get; set; }

        [ForeignKey("IdTipoUsuario")]
        public TipoUsuario TipoUsuario { get; set; }

    }
}
