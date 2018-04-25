defmodule RailsShop.ProgrammerTest do
  use RailsShop.ModelCase

  alias RailsShop.Programmer

  @valid_attrs %{email: "some email", git_name: "some git_name", name: "some name", quality: 42, speed: 42, verboseness: 42}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Programmer.changeset(%Programmer{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Programmer.changeset(%Programmer{}, @invalid_attrs)
    refute changeset.valid?
  end
end
