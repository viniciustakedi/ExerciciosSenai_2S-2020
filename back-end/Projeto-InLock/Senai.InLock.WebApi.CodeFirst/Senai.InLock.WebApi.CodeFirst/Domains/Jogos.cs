using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace Senai.InLock.WebApi.CodeFirst.Domains
{
    [Table("Jogos")]
    public class Jogos
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int IdJogo { get; set; }

        [Column(TypeName = "VARCHAR (150)")]
        [Required(ErrorMessage =  "Nome do jogo é obrigatorio")]
        public string NomeJogo { get; set; }

        [Column(TypeName = "VARCHAR(150)")]
        [Required(ErrorMessage = "A descricao é obrigatoria")]
        public string Descricao { get; set; }

        [Column(TypeName = "Date")]
        [DataType(DataType.Date)]
        [Required(ErrorMessage = "A data é obrigatoria")]
        public DateTime DataLancamento { get; set; }

        [Column("Preco", TypeName = "DECIMAL(18,2)")]
        [Required(ErrorMessage = "O valor do jogo é obrigatorio")]
        public decimal Valor { get; set; }

        public int IdEstudio { get; set; }

        [ForeignKey("IdEstudio")]
        public Estudios Estudio { get; set; }
             
    }
}
