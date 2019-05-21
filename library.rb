class Book

  attr_reader( :book_dtls )

  def initialize(book)
    @book_dtls = book
  end

  def get_book_details_by_name(name)
    details = "#{book_dtls[:title]}: #{book_dtls[:rental_details][:student_name]}: #{book_dtls[:rental_details][:date]}"
    return details
  end

  def get_rental_details_by_name(name)
    details = "#{book_dtls[:rental_details][:student_name]}: #{book_dtls[:rental_details][:date]}"
    return details
  end

end
