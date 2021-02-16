defmodule ExMonApiWeb.TrainersView do
  use ExMonApiWeb, :view

  alias ExMonApi.Trainer

  def render(
    "create.json",
    %{trainer: %Trainer{id: id, name: name}}
  ) do
    %{
      message: "created",
      trainer: %{
        id: id,
        name: name,
      }
    }
  end
end
