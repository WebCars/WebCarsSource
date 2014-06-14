//using System;
//using System.Collections.Generic;
//using System.Linq;
//using System.Web;
////Referencia a biblioteca ado.net
//using System.Data;
//using System.Data.Sql;
//using System.Data.SqlClient;
////Permite acesso ao web.config - lembrar de adicionar a referencia
//using System.Configuration;
//using DataObjects;

//namespace DataAccess
//{
//    public class AnuncioDA
//    {
//        public bool AlterarAnuncio(Anuncio anuncio)
//        {
//            using (SqlConnection conexao = conexaoBanco.Instance.Conexao)
//            {
//                SqlCommand comando = new SqlCommand();

//                //Abre a conexao com o db
//                try
//                {
//                    conexao.Open();
//                    //Associa o comando sql com a conexao aberta
//                    comando.Connection = conexao;
//                    //atribui a instrucao sql
//                    comando.CommandText = @"update anuncio " +
//                                           " set ideditora     = @ideditora, " +
//                                           "     titulo        = @titulo, " +
//                                           "     assunto       = @assunto, " +
//                                           "     isbn          = @isbn, " +
//                                           "     edicao        = @edicao, " +
//                                           "     dataedicao    = @dataedicao, " +
//                                           "     numeroPaginas = @numero, " +
//                                           "     situacao      = @situacao  " +
//                                           " where idanuncioro = @idanuncioro";


//                    //atribui valores as variaveis criadas pelo insert
//                    comando.Parameters.AddWithValue("@ideditora", anuncio.);
//                    comando.Parameters.AddWithValue("@titulo", anuncio.Titulo);
//                    comando.Parameters.AddWithValue("@assunto", anuncio.Assunto);
//                    comando.Parameters.AddWithValue("@isbn", anuncio.Edicao);
//                    comando.Parameters.AddWithValue("@edicao", anuncio.Edicao);
//                    comando.Parameters.AddWithValue("@dataedicao", anuncio.DataEdicao);
//                    comando.Parameters.AddWithValue("@numero", anuncio.NumeroPaginas);
//                    comando.Parameters.AddWithValue("@situacao", anuncio.Situacao);
//                    comando.Parameters.AddWithValue("@idanuncioro", anuncio.Idanuncioro);

//                    //incluir o Anuncio no bd;
//                    if (comando.ExecuteNonQuery() > 0)
//                    {
//                        return true;
//                    }
//                    else
//                    {
//                        return false;
//                    }
//                }
//                catch (Exception ex)
//                {
//                    throw ex;
//                }
//                finally
//                {
//                    //Fecha a conexao com o bd
//                    conexao.Close();
//                }
//            }
//        }

//        public bool ExcluirAnuncio(Anuncio anuncio)
//        {
//            using (SqlConnection conexao = conexaoBanco.Instance.Conexao)
//            {
//                SqlCommand comando = new SqlCommand();

//                //Abre a conexao com o db
//                try
//                {
//                    conexao.Open();

//                    //Associa o comando sql com a conexao aberta
//                    comando.Connection = conexao;
//                    //atribui a instrucao sql
//                    comando.CommandText = @"delete from anuncio " +
//                                           " where anuncio.nr-anuncio = @nrAnuncio";

//                    //atribui valores as variaveis criadas pelo insert
//                    comando.Parameters.AddWithValue("@nrAnuncio", anuncio.Numero);

//                    //incluir o anuncio no bd;
//                    if (comando.ExecuteNonQuery() > 0)
//                    {
//                        return true;
//                    }
//                    else
//                    {
//                        return false;
//                    }
//                }
//                catch (Exception ex)
//                {
//                    throw ex;
//                }
//                finally
//                {
//                    //Fecha a conexao com o bd
//                    conexao.Close();
//                }
//            }
//        }

//        public bool GravarAnuncio(Anuncio liv)
//        {
//            using (SqlConnection conexao = conexaoBanco.Instance.Conexao)
//            {
//                SqlCommand comando = new SqlCommand();

//                //Abre a conexao com o db
//                try
//                {
//                    conexao.Open();
//                    //Associa o comando sql com a conexao aberta
//                    comando.Connection = conexao;
//                    //atribui a instrucao sql
//                    comando.CommandText = @"Insert into Anuncio " +
//                                           "(nm-anuncio, data-inicial, cod-usuario, ano-fab, ano-modelo, cor, cod-marca, cod-categoria, cod-cambio) " +
//                                           " values (@nrAnuncio, @dataInicial, @codUsuario, @anoFab, @anoModelo, @cor, @codMarca, @codCategoria, @codCambio ); SELECT @@IDENTITY;";

//                    //atribui valores as variaveis criadas pelo insert
//                    comando.Parameters.AddWithValue("@nrAnuncio", liv.IdEditora);
//                    comando.Parameters.AddWithValue("@dataInicial", liv.Titulo);
//                    comando.Parameters.AddWithValue("@codUsuario", liv.Assunto);
//                    comando.Parameters.AddWithValue("@anoFab", liv.Edicao);
//                    comando.Parameters.AddWithValue("@anoModelo", liv.Edicao);
//                    comando.Parameters.AddWithValue("@cor", liv.DataEdicao);
//                    comando.Parameters.AddWithValue("@codMarca", liv.NumeroPaginas);
//                    comando.Parameters.AddWithValue("@codCategoria", liv.Situacao);
//                    comando.Parameters.AddWithValue("@codCambio", liv.Foto);

//                    //incluir o Anuncio no bd;
//                    object i = comando.ExecuteScalar();

//                    if (comando.ExecuteNonQuery() > 0)
//                    {
//                        return true;
//                    }
//                    else
//                    {
//                        return false;
//                    }


//                }
//                catch (Exception ex)
//                {
//                    throw ex;
//                }

//                finally
//                {
//                    //Fecha a conexao com o bd
//                    conexao.Close();
//                }

//            }
//        }

//        public List<Anuncio> ConsultarAnuncios(string titulo)
//        {
//            SqlConnection conexao = new SqlConnection();
//            SqlCommand comando = new SqlCommand();
//            List<Anuncio> Anuncios = new List<Anuncio>();

//            conexao.ConnectionString = ConfigurationManager.ConnectionStrings["conexao"].ToString();

//            try
//            {
//                conexao.Open();
//                comando.CommandText = string.Format(@"select * from Anuncio where titulo like '%{0}%'", titulo);
//                comando.Connection = conexao;

//                SqlDataReader leitor = comando.ExecuteReader();

//                // #warning erro de execucao


//                while (leitor.Read())
//                {
//                    Anuncio liv = new Anuncio();

//                    liv.IdAnuncio = int.Parse(leitor["idAnuncio"].ToString());
//                    liv.IdEditora = int.Parse(leitor["ideditora"].ToString());
//                    liv.Isbn = leitor["isbn"].ToString();
//                    liv.NumeroPaginas = int.Parse(leitor["numeropaginas"].ToString());
//                    liv.Situacao = int.Parse(leitor["situacao"].ToString());
//                    liv.Titulo = leitor["titulo"].ToString();
//                    liv.Assunto = leitor["assunto"].ToString();
//                    liv.DataEdicao = Convert.ToDateTime(leitor["dataEdicao"]);
//                    liv.Edicao = leitor["edicao"].ToString();

//                    Anuncios.Add(liv);
//                }


//            }

//            catch (SqlException ex)
//            {

//                throw ex;
//            }
//            finally
//            {
//                conexao.Close();
//            }
//            return Anuncios;
//        }

//        public Anuncio ConsultarAnuncio(int id)
//        {
//            SqlConnection conexao = new SqlConnection();
//            SqlCommand comando = new SqlCommand();

//            conexao.ConnectionString = ConfigurationManager.ConnectionStrings["conexao"].ToString();

//            try
//            {
//                conexao.Open();
//                comando.CommandText = string.Format(@"select * from Anuncio where idAnuncio = {0}", id);
//                comando.Connection = conexao;

//                SqlDataReader leitor = comando.ExecuteReader();

//                // #warning erro de execucao


//                while (leitor.Read())
//                {
//                    Anuncio liv = new Anuncio();

//                    liv.IdAnuncio = int.Parse(leitor["idAnuncio"].ToString());
//                    liv.IdEditora = int.Parse(leitor["ideditora"].ToString());
//                    liv.Isbn = leitor["isbn"].ToString();
//                    liv.NumeroPaginas = int.Parse(leitor["numeropaginas"].ToString());
//                    liv.Situacao = int.Parse(leitor["situacao"].ToString());
//                    liv.Titulo = leitor["titulo"].ToString();
//                    liv.Assunto = leitor["assunto"].ToString();
//                    liv.DataEdicao = Convert.ToDateTime(leitor["dataEdicao"]);
//                    liv.Edicao = leitor["edicao"].ToString();
//                    liv.Foto = (byte[])leitor["foto"];

//                    return liv;
//                }


//            }

//            catch (SqlException ex)
//            {

//                throw ex;
//            }
//            finally
//            {
//                conexao.Close();
//            }
//            return null;
//        }

//        public List<Anuncio> destaques()
//        {
            
//        }
//    }
//}



