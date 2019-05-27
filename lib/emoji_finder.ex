defmodule Emoji.Finder do
  def find(_term) do
    emojis = Emoji.Dataset.load_data
    IO.inspect(emojis)
  end
end
