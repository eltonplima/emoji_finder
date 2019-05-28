defmodule Emoji.DataSet do
  defp extract_fields(line) do
    [emoji_unicode, words | _rest] = line |> String.split(";", trim: true)
    [emoji_unicode, words]
  end

  defp split_words([emoji_unicode, words]) do
    splited_words = String.split(words) |> MapSet.new()
      %{emoji_unicode => splited_words}
  end

  def load(emojis_file) do
    File.read!(emojis_file)
    |> String.split("\n", trim: true)
    |> Enum.map(&extract_fields(&1))
    |> Enum.map(&split_words(&1))
    |> Enum.reduce(&Map.merge(&1, &2))
    #%{"UTF-CHAR" => MapSet( )}
    # Conjunto de emoticons vinculados a uma palavra
    # emojis=%{"cat" => MapSet.new(["xpto", "xpta"]), "eye" => MapSet.new(["xpte", "xpto"]), "hand" => MapSet.new(["xptb", "xptc"]), "foot" => MapSet.new(["xptd"])}
    # emojis |> Enum.filter(fn v -> elem(v, 0) in ["cat", "eye"] end) |> Enum.reduce(fn s1, s2 -> MapSet.intersection(elem(s1, 1), elem(s2, 1))  end)
  end
end
