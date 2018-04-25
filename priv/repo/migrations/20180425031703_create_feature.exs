defmodule RailsShop.Repo.Migrations.CreateFeature do
  use Ecto.Migration

  def change do
    create table(:features) do
      add :feature_value, :float
      add :feature_difficulty, :float
      add :discovered_value, :float
      add :discovered_difficulty, :float
      add :module_id, references(:module, on_delete: :nothing)

      timestamps()
    end

    create index(:features, [:module_id])
  end
end
