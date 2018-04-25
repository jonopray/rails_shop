defmodule RailsShop.Repo.Migrations.CreateVariable do
  use Ecto.Migration

  def change do
    create table(:variables) do
      add :name, :string

      timestamps()
    end
  end
end
