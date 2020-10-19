defmodule BankApiWeb.UserController do
  use BankApiWeb, :controller

  def signup(conn, %{"user" => user}) do 
    conn 
    |> put_status(:created)
    |> render("user.json", %{user: user})
  end

  def get_user(conn, %{}) do 
    conn 
    |> put_status(:ok)
    |> render("user.json", %{data: conn.params})
  end
end
