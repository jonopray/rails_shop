defmodule RailsShop.VariableTest do
  use RailsShop.ModelCase

  alias RailsShop.Variable

  @valid_attrs %{name: "some name"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Variable.changeset(%Variable{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Variable.changeset(%Variable{}, @invalid_attrs)
    refute changeset.valid?
  end
end
