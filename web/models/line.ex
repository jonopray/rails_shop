defmodule RailsShop.Line do
  use RailsShop.Web, :model

  schema "lines" do
    field :text, :string
    field :quality, :float
    field :feature_value, :float
    belongs_to :module, RailsShop.Module, foreign_key: :module_id
    belongs_to :writer, RailsShop.Writer, foreign_key: :writer_id
    belongs_to :function_call, RailsShop.FunctionCall, foreign_key: :function_call_id

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:text, :quality, :feature_value])
    |> validate_required([:text, :quality, :feature_value])
  end
end
