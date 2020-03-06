using Senai.InLock.WebApi.DataBaseFirst.Domains;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Senai.InLock.WebApi.DataBaseFirst.Interfaces
{
    interface IJogoRepository
    {
        void Cadastrar (Jogos cadastrarJogo);

        Jogos BuscarId(int id);

        List<Estudios> Listar();

        void Atualizar(Jogos atualizarJogo);

        void Deletar(int id);
    }
}
