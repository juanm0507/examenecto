defmodule Posts.Amigo do
  use Ecto.Schema

  schema "amigos" do
    field :nombre, :string
    field :texto, :string
    field :fecha, :date
    field :hora, :time
    belongs_to :usuario, Posts.Usuario
  end

  def changeset(amigo, params \\ %{}) do
    amigo
    |> Ecto.Changeset.cast(params, [:nombre, :texto, :fecha, :hora, :usuario_id])
    |> Ecto.Changeset.validate_required([:nombre, :texto, :fecha, :hora, :usuario_id])
  end
end
