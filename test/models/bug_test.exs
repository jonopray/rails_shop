defmodule RailsShop.BugTest do
  use RailsShop.ModelCase

  alias RailsShop.Bug

  @valid_attrs %{name: "some name", severity: 120.5}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Bug.changeset(%Bug{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Bug.changeset(%Bug{}, @invalid_attrs)
    refute changeset.valid?
  end
end
