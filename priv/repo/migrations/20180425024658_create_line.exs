defmodule RailsShop.Repo.Migrations.CreateLine do
  use Ecto.Migration

  def change do
    create table(:lines) do
      add :text, :string
      add :quality, :float
      add :line_value, :float
      add :module_id, references(:module, on_delete: :nothing)
      add :feature_id, references(:feature, on_delete: :nothing)
      add :writer_id, references(:programmer, on_delete: :nothing)
      add :next_line_id, references(:jine, on_delete: :nothing)

      timestamps()
    end

    create index(:lines, [:module_id])
    create index(:lines, [:feature_id])
    create index(:lines, [:writer_id])
    create index(:lines, [:next_line_id])
  end
end
