defmodule RailsShop.FeatureTest do
  use RailsShop.ModelCase

  alias RailsShop.Feature

  @valid_attrs %{discovered_difficulty: 120.5, discovered_value: 120.5, feature_difficulty: 120.5, feature_value: 120.5}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Feature.changeset(%Feature{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Feature.changeset(%Feature{}, @invalid_attrs)
    refute changeset.valid?
  end
end
