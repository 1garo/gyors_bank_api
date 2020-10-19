defmodule BankApiWeb.UserView do
  use BankApiWeb, :view

  def render("user.json", %{user: user}) do
    %{data: user}
  end

  def render("user.json", %{info: param}) do
    %{info: param}
  end
end
