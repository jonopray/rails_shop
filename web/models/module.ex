defmodule RailsShop.Module do
  use RailsShop.Web, :model

  schema "modules" do
    field :name, :string
    belongs_to :codebase, RailsShop.Codebase, foreign_key: :codebase_id

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:name])
    |> validate_required([:name])
  end

  def display
    # load lines and print
  end
end
