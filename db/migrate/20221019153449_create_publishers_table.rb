class CreatePublishersTable < ActiveRecord::Migration[6.1]
  def change
    create_table :publishers do |t|
      t.string :name
      t.integer :founding_year
      t.integer :money
    end
  end
end
