using Microsoft.EntityFrameworkCore;
using Senai.InLock.WebApi.CodeFirst.Domains;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Senai.InLock.WebApi.CodeFirst.Contexts
{
    public class InLockContext : DbContext 
    {

        public DbSet<TipoUsuario> TiposUsuario { get; set; }

        public DbSet<Usuarios> Usuarios { get; set; }

        public DbSet<Estudios> Estudios { get; set; }

        public DbSet<Jogos> Jogos { get; set; }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            optionsBuilder.UseSqlServer("Server=DEV1001\\SQLEXPRESS; Database=InLock_Games_CodeFirst; user Id=sa; pwd=sa@132");
            base.OnConfiguring(optionsBuilder);
        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<TipoUsuario>().HasData(
                new TipoUsuario
                {
                    IdTipoUsuario = 1,
                    Titulo = "Administrador"
                },
                new TipoUsuario
                {
                    IdTipoUsuario= 2,
                    Titulo = "Cliente",
                });

            modelBuilder.Entity<Usuarios>().HasData(
                new Usuarios
                {
                    IdUsuario = 1,
                    Email = "Admin@admin.com",
                    Senha = "Admin",
                    IdTipoUsuario = 1 
                },
                new Usuarios
                {
                    IdUsuario = 2,
                    Email = "Cliente@cliente.com",
                    Senha = "Cliente",
                    IdTipoUsuario = 2
                });

            modelBuilder.Entity<Estudios>().HasData(
                new Estudios {IdEstudio = 1, NomeEstudio = "Blizzard"},
                new Estudios {IdEstudio = 2, NomeEstudio = "Rockstar Studios "},
                new Estudios {IdEstudio = 3, NomeEstudio = "Square Enix "}
                );

            modelBuilder.Entity<Jogos>().HasData(
                new Jogos
                {
                    IdJogo = 1,
                    NomeJogo = "Diablo 3",
                    DataLancamento = Convert.ToDateTime("15/05/2012"),
                    Descricao = "É úm jogo que contém bastante ação e é viciante",
                    Valor = Convert.ToDecimal("99,00"),
                    IdEstudio = 1
                },
                new Jogos
                {
                    IdJogo = 2,
                    NomeJogo = "Red Dead Redemption II",
                    DataLancamento = Convert.ToDateTime("26/10/2018"),
                    Descricao = "Jogo eletrônico de ação-aventura western",
                    Valor = Convert.ToDecimal("120,00"),
                    IdEstudio = 2
                });

            base.OnModelCreating(modelBuilder);



        }
    }
}
s