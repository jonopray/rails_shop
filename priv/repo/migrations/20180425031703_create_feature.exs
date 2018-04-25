defmodule RailsShop.Repo.Migrations.CreateFeature do
  use Ecto.Migration

  def change do
    create table(:features) do
      add :feature_value, :float
      add :feature_difficulty, :float
      add :discovered_value, :float
      add :discovered_difficulty, :float
      add :codebase_id, references(:codebase, on_delete: :nothing)

      timestamps()
    end

    create index(:features, [:codebase_id])
  end
end
