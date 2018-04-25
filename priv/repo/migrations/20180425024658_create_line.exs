defmodule RailsShop.Repo.Migrations.CreateLine do
  use Ecto.Migration

  def change do
    create table(:lines) do
      add :text, :string
      add :quality, :float
      add :feature_value, :float
      add :module_id, references(:module, on_delete: :nothing)
      add :writer_id, references(:programmer, on_delete: :nothing)
      add :function_call_id, references(:line, on_delete: :nothing)

      timestamps()
    end

    create index(:lines, [:module_id])
    create index(:lines, [:writer_id])
    create index(:lines, [:function_call_id])
  end
end
