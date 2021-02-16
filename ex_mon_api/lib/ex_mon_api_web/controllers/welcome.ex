defmodule ExMonApiWeb.WelcomeController do
  use ExMonApiWeb, :controller

  def index(connection, _params) do
    connection
    |> text("Welcome to the ExMon API!")
  end
end
