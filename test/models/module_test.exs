defmodule RailsShop.ModuleTest do
  use RailsShop.ModelCase

  alias RailsShop.Module

  @valid_attrs %{name: "some name"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Module.changeset(%Module{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Module.changeset(%Module{}, @invalid_attrs)
    refute changeset.valid?
  end
end
