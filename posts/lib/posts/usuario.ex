defmodule Posts.Usuario do
  use Ecto.Schema

  schema "usuarios" do
    field :nombre, :string
    field :texto, :string
    field :fecha, :date
    field :hora, :time
    has_many :amigo, Posts.Amigo
  end

  def changeset(usuario, params \\ %{}) do
    usuario
    |> Ecto.Changeset.cast(params, [:nombre, :texto, :fecha, :hora])
    |> Ecto.Changeset.validate_required([:nombre, :texto, :fecha, :hora])
  end
end
