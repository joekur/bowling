defmodule Bowling do
  def score(rolls) do
    score(rolls, 0, 1)
  end

  defp score(rolls, total, 10) do
    total + Enum.sum(rolls)
  end

  defp score([10,a,b|rest], total, frame) do
    score([a,b|rest], total + 10 + a + b, frame + 1)
  end

  defp score([a,b,c|rest], total, frame) when a + b == 10 do
    score([c|rest], total + 10 + c, frame + 1)
  end

  defp score([a,b|rest], total, frame) do
    score(rest, total + a + b, frame + 1)
  end
end
