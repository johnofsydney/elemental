class ChangeElectronsTypeInElements < ActiveRecord::Migration[5.1]
  def change
    change_column :elements, :electrons, :text
  end
end
