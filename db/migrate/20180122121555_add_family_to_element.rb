class AddFamilyToElement < ActiveRecord::Migration[5.1]
  def change
    add_column :elements, :family, :text
  end
end
