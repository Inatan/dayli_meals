defmodule Exmeal.Meals.Get do
  alias Exmeal.{Repo, Meal, Error}

  def by_id(id) do
    case Repo.get(Meal, id) do
      nil -> {:error, Error.build_meal_not_found_error()}
      meal -> {:ok, meal}
    end
  end
end
