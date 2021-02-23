defmodule Posts.Repo.Migrations.CreatePosts do
  use Ecto.Migration

  def change do
    create table(:usuarios) do
      add :nombre, :string
      add :texto, :string
      add :fecha, :date
      add :hora, :time
    end

    create table(:amigos) do
      add :nombre, :string
      add :texto, :string
      add :fecha, :date
      add :hora, :time
      add :usuario_id, references(:usuarios), null: false
    end
  end
end
