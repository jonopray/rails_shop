defmodule RailsShop.Repo.Migrations.CreateCodebase do
  use Ecto.Migration

  def change do
    create table(:codebases) do
      add :name, :string

      timestamps()
    end
  end
end
