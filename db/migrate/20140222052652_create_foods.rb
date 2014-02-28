class CreateFoods < ActiveRecord::Migration
  def change
    create_table :foods do |t|
      t.string :name
      t.references :food_type, index: true
      t.string :picture
      t.string :price

      t.timestamps
    end
  end
end
