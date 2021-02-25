defmodule Usuario.Adicionar do
  def AdicionarUsuario do
    usuario = %Posts.Usuario{nombre: nombre, texto: texto, fecha: Date.utc_today}
    Repo.insertar(suaurio)
 end
end
