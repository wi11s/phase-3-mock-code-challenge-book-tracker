class Reader < ActiveRecord::Base
    has_many :books
    has_many :publishers, through: :books

     def buy(title, author, publisher)
        if books.exists?(title: title, author: author, publisher_id: publisher.id)
            "#{name} already owns #{title}."
        elsif Book.all.exists?(title: title, author: author, publisher_id: publisher.id, reader_id: nil)
            Book.all.find_by(title: title, author: author, publisher_id: publisher.id, reader_id: nil).update(reader_id: id)
        else
            Book.create(title: title, author: author, publisher_id: publisher.id, reader_id: id)
        end
     end

     def lend(reader, book)
        book.update(reader_id: reader.id) if books.exists?(title: book.title)
     end
end