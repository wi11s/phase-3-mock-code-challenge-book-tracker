class CreateReadersTable < ActiveRecord::Migration[6.1]
  def change
    create_table :readers do |t|
      t.string :name
      t.string :superpower
      t.integer :money
    end
  end
end
