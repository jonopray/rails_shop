defmodule RailsShop.Programmer do
  use RailsShop.Web, :model

  schema "programmers" do
    field :name, :string
    field :git_name, :string
    field :email, :string
    field :speed, :integer
    field :quality, :integer
    field :verboseness, :integer
    field :planning, :integer

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

  def work_on_feature(feature_id) do
    # create lines of code with feature_id in feature.module_id, with lines needed/line_value
    # proportional to the programmer quality
    # line_value = (0.5 + random()) / (feature.feature_difficulty * verboseness)
    # lines_written = (0.5 + random()) * speed
  end

  def find_bug(bug_id) do
    # flip the bug_found boolean on the line after a random number of days/hours
  end

  def fix_bug(bug_id) do
    # work on fixing the found bug_id by adding some lines around it
  end

  def plan_feature(feature_id) do
    # reveal feature.discovered_value and feature.discovered_difficulty based on planning
  end
end
