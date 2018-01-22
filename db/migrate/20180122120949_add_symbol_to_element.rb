class AddSymbolToElement < ActiveRecord::Migration[5.1]
  def change
    add_column :elements, :symbol, :text
  end
end
