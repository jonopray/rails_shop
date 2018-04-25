defmodule RailsShop.Feature do
  use RailsShop.Web, :model

  schema "features" do
    field :feature_value, :float
    field :feature_difficulty, :float
    field :discovered_value, :float
    field :discovered_difficulty, :float
    belongs_to :codebase, RailsShop.Codebase, foreign_key: :codebase_id

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:feature_value, :feature_difficulty, :discovered_value, :discovered_difficulty])
    |> validate_required([:feature_value, :feature_difficulty, :discovered_value, :discovered_difficulty])
  end
end
