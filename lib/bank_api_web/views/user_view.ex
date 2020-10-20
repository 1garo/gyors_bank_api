defmodule BankApiWeb.UserView do
  use BankApiWeb, :view

  def render("user.json", %{user: user}) do
    %{data: user}
  end

  def render("user.json", %{data: steam_id}) do
    resp = HTTPoison.get! "http://api.steampowered.com/ISteamUser/GetPlayerSummaries/v0002/?key=C7E685D4E2DD7860F1EADB04C393907A&steamids=#{steam_id["test"]}"
    resp = Poison.decode(resp.body)
    ret = elem(resp, 1)
    # ret
    %{user_info: ret["response"]}
    # resp = HTTPoison.get! "http://api.steampowered.com/ISteamUser/GetPlayerSummaries/v0002/?key=C7E685D4E2DD7860F1EADB04C393907A&steamids=#{steam_id["test"]}".body
    # resp.body
    # |> Poison.decode()
    # |> elem(1)
    # IO.inspect steam_id["test"] 
    # %{info: param}
  end
end
