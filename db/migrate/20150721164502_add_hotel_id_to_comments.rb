class AddHotelIdToComments < ActiveRecord::Migration
  def change
    add_column :comments, :hotel_id, :integer
  end
end
