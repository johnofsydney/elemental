class CreateCountriesScientists < ActiveRecord::Migration[5.1]
  def change
    create_table :countries_scientists do |t|
      t.integer :country_id
      t.integer :scientist_id
      t.timestamps
    end
  end
end
