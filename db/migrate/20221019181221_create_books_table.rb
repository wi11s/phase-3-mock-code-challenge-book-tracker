class CreateBooksTable < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.integer :price
      t.integer :publisher_id
      t.integer :reader_id
    end
  end
end
