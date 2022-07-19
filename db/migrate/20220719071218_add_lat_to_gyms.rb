class AddLatToGyms < ActiveRecord::Migration[6.0]
  def change
    add_column :gyms, :lat, :decimal, precision: 9, scale: 6
  end
end
