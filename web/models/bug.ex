defmodule RailsShop.Bug do
  use RailsShop.Web, :model

  schema "bugs" do
    field :name, :string
    field :severity, :float

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:name, :severity])
    |> validate_required([:name, :severity])
  end
end
