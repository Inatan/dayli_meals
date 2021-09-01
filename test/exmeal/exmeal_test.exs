defmodule Exmeal.MealTest do
  use Exmeal.DataCase, async: true

  import Exmeal.Factory

  alias Ecto.Changeset
  alias Exmeal.Meal

  describe "changeset/1" do
    test "when all params are valid, returns a valid changeset" do
      params = build(:meal_params)

      response = Meal.changeset(params)

      assert %Changeset{
               changes: %{description: "Batata", date: ~N[2001-05-02 00:00:07], calories: 20},
               valid?: true
             } = response
    end
  end
end
