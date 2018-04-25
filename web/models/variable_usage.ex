defmodule RailsShop.VariableUsage do
  use RailsShop.Web, :model

  schema "variable_usages" do
    belongs_to :variable, RailsShop.Variable, foreign_key: :variable_id
    belongs_to :line, RailsShop.Line, foreign_key: :line_id

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [])
    |> validate_required([])
  end
end
