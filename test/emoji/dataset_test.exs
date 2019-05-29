defmodule EmojiFinder.DataSetTest do
  use ExUnit.Case

  doctest Emoji.DataSet

  test "test load data" do
    emoji_file = Application.get_env(:emoji, :database_path)
    words_unicode_1 = String.split("INFORMATION DESK PERSON")
    words_unicode_2 = String.split("CAT FACE WITH TEARS OF JOY")
    expected = %{
      "1F481" => MapSet.new(words_unicode_1),
      "1F639" => MapSet.new(words_unicode_2)
    }
    IO.inspect(emoji_file)
    assert Emoji.DataSet.load(emoji_file) == expected
  end

end
