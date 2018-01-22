class AddQuantityToCountriesElement < ActiveRecord::Migration[5.1]
  def change
    add_column :countries_elements, :quantity, :integer
  end
end
