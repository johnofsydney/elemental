class DropDeposits < ActiveRecord::Migration[5.1]
  def change
    drop_table :deposits
  end
end

# discussion here about best practice when dropping a table.
# I'm not following best practice, just quick practice
# https://stackoverflow.com/questions/4020131/rails-db-migration-how-to-drop-a-table
