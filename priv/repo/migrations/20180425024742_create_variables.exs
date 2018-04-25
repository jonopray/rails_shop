defmodule RailsShop.Repo.Migrations.CreateVariables do
  use Ecto.Migration

  def change do
    create table(:variables) do
      add :name, :string

      timestamps()
    end

  end
end
