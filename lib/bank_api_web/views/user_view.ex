defmodule BankApiWeb.UserView do
  use BankApiWeb, :view

  def render("user.json", %{user: user}) do
    %{data: user}
  end
end
