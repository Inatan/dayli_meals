defmodule Exmeal.Meals.CreateTest do
  use Exmeal.DataCase, async: true

  import Exmeal.Factory

  alias Exmeal.{Meal, Error}

  describe "Create Meal" do
    test "when all params are valid, returns the meal" do
      params = build(:meal_params)

      response = Exmeal.create_meal(params)

      assert {:ok,
              %Meal{
                calories: 20,
                date: ~N[2001-05-02 00:00:07],
                description: "Banana",
                id: _id,
                inserted_at: _inserted_at,
                updated_at: _updated_at
              }} = response
    end

    test "when there are invalid params, returns an error" do
      params = %{
        calories: "20",
        date: ~N[2001-05-02 00:00:07]
      }

      response = Exmeal.create_meal(params)

      assert {:error, %Error{}} = response
    end
  end
end
