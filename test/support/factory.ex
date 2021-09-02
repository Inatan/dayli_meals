defmodule Exmeal.Factory do
  use ExMachina.Ecto, repo: Exmeal.Repo

  alias Exmeal.Meal

  def meal_params_factory do
    %{
      description: "Banana",
      date: "2001-05-02T00:00:07",
      calories: 20
    }
  end

  def meal_factory do
    %Meal{
      description: "Banana",
      date: "2001-05-02T00:00:07",
      calories: 20,
      id: "5e694bc0-78fc-4600-bcd0-0733b7540a6e"
    }
  end
end
