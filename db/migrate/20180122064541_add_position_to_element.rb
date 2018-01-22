class AddPositionToElement < ActiveRecord::Migration[5.1]
  def change
    add_column :elements, :position, :text
  end
end
