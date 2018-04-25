defmodule RailsShop.Repo.Migrations.CreateVariableUsage do
  use Ecto.Migration

  def change do
    create table(:variable_usages) do
      add :variable_id, references(:variable, on_delete: :nothing)
      add :line_id, references(:line, on_delete: :nothing)

      timestamps()
    end

    create index(:variable_usages, [:variable_id])
    create index(:variable_usages, [:line_id])
  end
end
