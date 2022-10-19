class Publisher < ActiveRecord::Base
    has_many :books
    has_many :readers, through: :books

    def publish_new_book(title, author, price)
        Book.create(title: title, author: author, price: price, publisher_id: id)
    end

    def self.two_newest_publishers
        self.order('founding_year DESC').limit(2)
    end

    def self.ban_book(title)
        Book.where({title: title}).map do |b|
            b.update(reader_id: nil)
        end
    end
end