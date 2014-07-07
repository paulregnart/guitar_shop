class CreateGuitars < ActiveRecord::Migration
  def change
    create_table :guitars do |t|
      t.string :model
      t.string :make
      t.decimal :price

      t.timestamps
    end
  end
end
