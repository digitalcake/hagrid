defmodule Alfred do
  require Poison
  def generate_json({:ok, results}) do
    results
    |> Enum.map(fn(items) -> parse_item(items) end)
    |> Enum.join(",")
    |> wrap_json
  end

  def parse_item ( %{"name" =>  name, "meta" => %{"description" => description }, "releases" => releases} ) do
     current_release = get_release(releases)
     Poison.encode! %{title:  "#{name} - #{current_release}", subtitle: description, arg: set_arg(name, current_release)}
  end

  defp wrap_json(items) do
   json =  """
    {
      "items": [
        #{items}
      ]
    }
    """

    {:ok, json}
  end

  defp get_release [%{"url" => _, "version" => version}|_] do
    version
  end

  defp set_arg(name, version) do
    "{:#{name}, \"~> #{version}\"}"
  end
end
