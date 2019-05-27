defmodule EmojiFinder.DataSetTest do
  use ExUnit.Case

  doctest EmojiFinder.DataSet

  test "test load data" do
    content = "1F481;INFORMATION DESK PERSON;So;0;ON;;;;;N;;;;;\n"
    expected = String.trim(content, "\n")

    {:ok, fd, emojis_file} = Temp.open("test.txt")
    IO.write(fd, content)

    assert EmojiFinder.DataSet.load(emojis_file) == expected
  end
end