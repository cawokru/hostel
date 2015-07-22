class HotelsRemoveAddressFloat < ActiveRecord::Migration
  def change
    remove_column :hotels, :float
    remove_column :hotels, :address_id
  end
end
