defmodule ExMon.Game.Actions do
  alias ExMon.Game
  alias ExMon.Game.Actions.{Attack, Heal}

  def fetch_move(move) do
    Game.player()
    |> Map.get(:moves)
    |> find_move(move)
  end

  defp find_move(moves, move) do
    Enum.find_value(moves, {:error, move}, fn {key, value} ->
      if value == move, do: {:ok, key}
    end)
  end

  def attack(move) do
    case Game.turn() do
      :player -> Attack.execute(:computer, move)
      :computer -> Attack.execute(:player, move)
    end
  end

  def heal() do
    case Game.turn() do
      :player -> Heal.execute(:player)
      :computer -> Heal.execute(:computer)
    end
  end
end
