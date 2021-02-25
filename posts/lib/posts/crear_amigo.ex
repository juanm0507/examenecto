defmodule Amigo do
  def AdicionarUsuario do
    amigo = %Posts.Amigo{nombre: nombre, texto: texto, fecha: Date.utc_today, usuario_id: usuario}
    Repo.insert!(amigo)
 end

end
