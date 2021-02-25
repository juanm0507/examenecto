defmodule Posts do
  def AdicionarPosts do
     posts = %Posts.Post{texto: "#{mensaje}", usuario_id: usuario}
     Repo.insertar(posts)
  end

  def listado(usuario_id, lim, offs ) do
    usuario = usuario
    Repo.all(from p in Post,
    join: u in ^usuarios,
    select: {u.name_user, p.descrip},
    where: u.usuario_id == ^usuario_id,
    order_by:  [des: p.id],
    limit: ^lim,
    offset: ^offs
    )
  end
end
