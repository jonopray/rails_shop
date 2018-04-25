defmodule RailsShop.Line do
  use RailsShop.Web, :model

  schema "lines" do
    field :text, :string
    field :quality, :float
    field :line_value, :float
    belongs_to :module, RailsShop.Module, foreign_key: :module_id
    belongs_to :feature, RailsShop.Feature, foreign_key: :feature_id
    belongs_to :writer, RailsShop.Writer, foreign_key: :writer_id
    belongs_to :next_line, RailsShop.Line, foreign_key: :next_line_id

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:text, :quality, :line_value])
    |> validate_required([:text, :quality, :line_value])
  end
end
