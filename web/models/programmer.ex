defmodule RailsShop.Programmer do
  use RailsShop.Web, :model

  schema "programmers" do
    field :name, :string
    field :git_name, :string
    field :email, :string
    field :speed, :integer
    field :quality, :integer
    field :verboseness, :integer

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:name, :git_name, :email, :speed, :quality, :verboseness])
    |> validate_required([:name, :git_name, :email, :speed, :quality, :verboseness])
  end
end
