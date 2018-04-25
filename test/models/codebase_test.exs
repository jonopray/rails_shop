defmodule RailsShop.CodebaseTest do
  use RailsShop.ModelCase

  alias RailsShop.Codebase

  @valid_attrs %{name: "some name"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Codebase.changeset(%Codebase{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Codebase.changeset(%Codebase{}, @invalid_attrs)
    refute changeset.valid?
  end
end
