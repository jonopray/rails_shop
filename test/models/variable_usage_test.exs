defmodule RailsShop.VariableUsageTest do
  use RailsShop.ModelCase

  alias RailsShop.VariableUsage

  @valid_attrs %{}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = VariableUsage.changeset(%VariableUsage{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = VariableUsage.changeset(%VariableUsage{}, @invalid_attrs)
    refute changeset.valid?
  end
end
