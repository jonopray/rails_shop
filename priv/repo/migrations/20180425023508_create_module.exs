defmodule RailsShop.Repo.Migrations.CreateModule do
  use Ecto.Migration

  def change do
    create table(:modules) do
      add :name, :string
      add :codebase_id, references(:codebase, on_delete: :nothing)

      timestamps()
    end

    create index(:modules, [:codebase_id])
  end
end
