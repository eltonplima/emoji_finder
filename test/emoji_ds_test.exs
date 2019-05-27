defmodule EmojiFinder.DataSetTest do
  use ExUnit.Case

  doctest EmojiFinder.DataSet

  test "test load data" do
    content = """
    1F481;INFORMATION DESK PERSON;So;0;ON;;;;;N;;;;;
    1F639;CAT FACE WITH TEARS OF JOY;So;0;ON;;;;;N;;;;;
    """
    {:ok, fd, emojis_file} = Temp.open("test.txt")
    IO.write(fd, content)

    words_unicode_1 = String.split("INFORMATION DESK PERSON")
    words_unicode_2 = String.split("CAT FACE WITH TEARS OF JOY")
    expected = %{
      "1F481" => MapSet.new(words_unicode_1),
      "1F639" => MapSet.new(words_unicode_2)
    }

    assert EmojiFinder.DataSet.load(emojis_file) == expected
  end

end
