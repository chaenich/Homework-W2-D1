require('minitest/autorun')
require('minitest/rg')
require_relative('../library')

class TestLibrary < MiniTest::Test

  def setup

    @library = Library.new( [
      "lord_of_the_rings",
      {"Jeff" => "01/12/16"}
    ])

  end

end
