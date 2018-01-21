class AddCountryIdToScientists < ActiveRecord::Migration[5.1]
  def change
    add_column :scientists, :country_id, :integer
  end
end
