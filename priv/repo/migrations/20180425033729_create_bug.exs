defmodule RailsShop.Repo.Migrations.CreateBug do
  use Ecto.Migration

  def change do
    create table(:bugs) do
      add :name, :string
      add :severity, :float

      timestamps()
    end
  end
end
