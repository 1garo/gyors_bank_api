defmodule BankApiWeb.UserView do
  use BankApiWeb, :view

  def render("user.json", %{user: user}) do
    %{data: user}
  end

  def render("user.json", %{data: steam_id}) do
    # resp = HTTPoison.get! "http://api.steampowered.com/ISteamUser/GetPlayerSummaries/v0002/?key=C7E685D4E2DD7860F1EADB04C393907A&steamids=#{steam_id}"
    # Poison.decode(resp.body)
    IO.inspect steam_id["test"] 
    # %{info: param}
  end
end
