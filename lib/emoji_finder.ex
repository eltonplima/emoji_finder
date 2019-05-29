defmodule Emoji.Finder do
  @moduledoc false
  alias Emoji.DataSet

  def find(_names) do
    emoji_data = Application.get_env(:emoji, :database_path) |> DataSet.load()
  end
end
