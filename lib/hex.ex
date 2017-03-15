defmodule HexApi do
  @api "https://hex.pm/api/packages"

  def search query do
    query
    |> build_request
    |> HTTPoison.get
    |> parse
  end

  def build_request query do
    @api <> "?limit=10&sort=downloads&search=" <> query
  end

  defp parse {:ok, %HTTPoison.Response{body: body}} do
    Poison.decode(body)
  end
end
