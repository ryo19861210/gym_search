class AddLngToGyms < ActiveRecord::Migration[6.0]
  def change
    add_column :gyms, :lng, :decimal, precision: 9, scale: 6
  end
end
