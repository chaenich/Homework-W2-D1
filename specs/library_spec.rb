require('minitest/autorun')
require('minitest/rg')
require_relative('../library')

class TestLibrary < MiniTest::Test

  def setup
    @book = Book.new( {
      title: "lord_of_the_rings",
      rental_details: {
        student_name: "Jeff",
        date: "01/12/16"
        }
      }
    )
  end

  def test_get_book_name()
    assert_equal("lord_of_the_rings", @book.book_dtls[:title])
  end

  def test_get_book_details_by_name
    details = @book.get_book_details_by_name("lord_of_the_rings")
    assert_equal("lord_of_the_rings: Jeff: 01/12/16", details)
  end

  def test_get_rental_details_by_name
    details = @book.get_rental_details_by_name("lord_of_the_rings")
    assert_equal("Jeff: 01/12/16", details)
  end
end
