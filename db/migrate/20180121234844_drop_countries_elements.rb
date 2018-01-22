class DropCountriesElements < ActiveRecord::Migration[5.1]
  def change
    drop_table :countries_elements
  end
end
