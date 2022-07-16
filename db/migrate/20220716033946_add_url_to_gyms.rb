class AddUrlToGyms < ActiveRecord::Migration[6.0]
  def change
    add_column :gyms, :url, :text
  end
end
