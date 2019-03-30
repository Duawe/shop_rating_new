class AddCategoryToShops < ActiveRecord::Migration[5.2]
  def change
    add_reference :shops, :category, foreign_key: true
  end
end
