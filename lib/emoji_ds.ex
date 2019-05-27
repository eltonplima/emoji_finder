defmodule EmojiFinder.DataSet do
  defp sanitize(line) do
    line |> String.trim("\n")
  end

  def load(emojis_file) do
    File.open!(emojis_file)
    |> IO.read(:line)
    |> sanitize
    #%{"UTF-CHAR" => MapSet( )}
    # Conjunto de emoticons vinculados a uma palavra
    # emojis=%{"cat" => MapSet.new(["xpto", "xpta"]), "eye" => MapSet.new(["xpte", "xpto"]), "hand" => MapSet.new(["xptb", "xptc"]), "foot" => MapSet.new(["xptd"])}
    # emojis |> Enum.filter(fn v -> elem(v, 0) in ["cat", "eye"] end) |> Enum.reduce(fn s1, s2 -> MapSet.intersection(elem(s1, 1), elem(s2, 1))  end)
  end
end
