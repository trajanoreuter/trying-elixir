defmodule ExMonApiWeb.TrainersController do
  use ExMonApiWeb, :controller

  def create(connection, params) do
    params
    |> ExMonApi.create_trainer()
    |> handle_response(connection)
  end

  defp handle_response({:ok, trainer}, connection) do
    connection
    |> put_status(:created)
    |> render("create.json", trainer:  trainer)
  end
end
