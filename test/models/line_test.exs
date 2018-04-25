defmodule RailsShop.LineTest do
  use RailsShop.ModelCase

  alias RailsShop.Line

  @valid_attrs %{feature_value: 120.5, quality: 120.5, text: "some text"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Line.changeset(%Line{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Line.changeset(%Line{}, @invalid_attrs)
    refute changeset.valid?
  end
end
