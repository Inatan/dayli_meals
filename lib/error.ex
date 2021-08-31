defmodule Exmeal.Error do
  @keys [:status, :result]

  @enforce_keys @key

  defstruct @keys

  def build(status, result) do
    %__MODULE__{
      status: status,
      result: result
    }
  end
end
