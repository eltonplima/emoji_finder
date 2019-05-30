defmodule Emoji.DataSetTest do
  use ExUnit.Case

  doctest Emoji.DataSet

  test "test load data" do
    emoji_file = Application.get_env(:emoji, :database_path)
    expected = %{
      "INFORMATION" => MapSet.new(["1F481"]),
      "DESK" => MapSet.new(["1F481"]),
      "PERSON" => MapSet.new(["1F481"]),
      "CAT" => MapSet.new(["1F639"]),
      "FACE" => MapSet.new(["1F639"]),
      "WITH" => MapSet.new(["1F639"]),
      "TEARS" => MapSet.new(["1F639"]),
      "OF" => MapSet.new(["1F639"]),
      "JOY" => MapSet.new(["1F639"])
    }
    assert Emoji.DataSet.load(emoji_file) == expected
  end

end
