defmodule Exmeal.Factory do
  use ExMachina.Ecto, repo: Exmeal.Repo

  alias Exmeal.Meal

  def meal_params_factory do
    %{
      description: "Batata",
      date: ~N[2001-05-02 00:00:07],
      calories: "20"
    }
  end

  def meal_factory do
    %Meal{
      description: "Batata",
      date: ~N[2001-05-02 00:00:07],
      calories: "20",
      id: "86f8984d-77bb-42f4-8f4e-46d406d6e5c3"
    }
  end
end
