class ChangeDataTypeForPrice < ActiveRecord::Migration
  def change
    change_column :hotels, :price,  :float
  end
end
