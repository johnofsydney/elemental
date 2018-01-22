class AddYearToElement < ActiveRecord::Migration[5.1]
  def change
    add_column :elements, :year, :integer
  end
end
