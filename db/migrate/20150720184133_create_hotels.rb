class CreateHotels < ActiveRecord::Migration
  def change
    create_table :hotels do |t|
      t.string :title
      t.integer :rating
      t.0 :default
      t.boolean :breakfast
      t.text :room_description
      t.string :photo
      t.string :price
      t.string :float
      t.references :address, index: true

      t.timestamps
    end
  end
end
