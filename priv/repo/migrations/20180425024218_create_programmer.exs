defmodule RailsShop.Repo.Migrations.CreateProgrammer do
  use Ecto.Migration

  def change do
    create table(:programmers) do
      add :name, :string
      add :git_name, :string
      add :email, :string
      add :speed, :integer
      add :quality, :integer
      add :verboseness, :integer

      timestamps()
    end
  end
end
