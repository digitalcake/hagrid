defmodule Hagrid do
  @moduledoc """
  Documentation for Hagrid.
  """
  require HexApi
  require Alfred

  def main(args \\ []) do
    args
    |> parse_args
    |> HexApi.search
    |> Alfred.generate_json
    |> response
  end

  defp parse_args(args) do
    {[search: search_term], _, _} = OptionParser.parse(args, switches: [search: :string, name: :string])
    search_term
  end

  defp response({:ok, results}) do
    results
    |> IO.write
  end
end
