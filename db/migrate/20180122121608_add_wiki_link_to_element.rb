class AddWikiLinkToElement < ActiveRecord::Migration[5.1]
  def change
    add_column :elements, :wiki_link, :text
  end
end
