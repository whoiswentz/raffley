defmodule Raffley.Rules do
  def list_rules do
    [
      %{
        id: 1,
        text: "This is a rule sample, rule number 1"
      },
      %{
        id: 2,
        text: "This is a rule sample, rule number 2"
      },
      %{
        id: 3,
        text: "This is a rule sample, rule number 3"
      }
    ]
  end

  def find_rule(id) when is_integer(id) do
    Enum.find(list_rules(), fn rule -> rule.id == id end)
  end

  def find_rule(id) do
    id
    |> String.to_integer()
    |> find_rule()
  end
end
