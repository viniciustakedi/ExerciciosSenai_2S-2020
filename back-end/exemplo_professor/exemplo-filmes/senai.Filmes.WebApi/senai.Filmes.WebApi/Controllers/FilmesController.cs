using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using senai.Filmes.WebApi.Domains;
using senai.Filmes.WebApi.Interfaces;
using senai.Filmes.WebApi.Repositories;

namespace senai.Filmes.WebApi.Controllers
{
    // Define que o tipo de resposta da API será no formato JSON
    [Produces("application/json")]

    // Define que a rota de uma requisição será no formato domínio/api/NomeController
    [Route("api/[controller]")]

    // Define que é um controlador de API
    [ApiController]

    public class FilmesController : ControllerBase
    {
        private IFilmeRepository _filmeRepository { get; set; }

        public FilmesController()
        {
            _filmeRepository = new FilmeRepository();
        }

        [HttpGet]
        public IEnumerable <FilmeDomain> Get()
        {
            return  _filmeRepository.Listar();
        }

        [HttpPost]
        public IActionResult Post(FilmeDomain novoFilme)
        {
            _filmeRepository.Cadastrar (novoFilme);
        }

        [HttpGet ("{ID}")]
        public IActionResult GetById (int id)
        {
            FilmeDomain filmeBuscado = _filmeRepository.buscarPorId(id);

            if(filmeBuscado == null)
            {
                return NotFound ("Nenhum filme foi encontrado");
            }

            return Ok ("Filme buscado");
        }

        [HttpPut]
        public IActionResult PutIdCorpo (FilmeDomain filmeAtualizado)
        {
            FilmeDomain filmeBuscado = _filmeRepository.buscarPorId(filmeAtualizado.IdFilme);

            if (filmeBuscado == null)
            {
                try
                {
                    _filmeRepository.atualizarIdCorpo(filmeAtualizado);
                    return NoContent();
                }
                catch (Exception erro)
                {
                    
                    return BadRequest(erro);
                }
            }

            return NotFound (
                new {
                    mensagem = "Filme não encontrado",
                    erro = true
                }
            );
        }

        [HttpPut("{id}")]
        public IActionResult PutIdUrl(int id, FilmeDomain filmeAtualizado)
        {
            FilmeDomain filmeBuscado = _filmeRepository.buscarPorId(id);

            if(filmeBuscado == null)
            {
                return NotFound
                (
                    new
                    {
                        mensagem = "Filme não pode ser encontrado"
                        erro = true
                    }
                );
            }

            try
            {
                _filmeRepository.atualizarIdUrl(id, filmeAtualizado);

                return NoContent();
            }
            catch (Exception erro)
            {
                
                return BadRequest (erro);
            }
        }

        [HttpDelete("{id}")]
        public IActionResult Delete(int id)
        {
            // Faz a chamada para o método .Deletar();
            _filmeRepository.Deletar(id);

            // Retorna um status code com uma mensagem personalizada
            return Ok("Filme deletado");
        }



    }

}