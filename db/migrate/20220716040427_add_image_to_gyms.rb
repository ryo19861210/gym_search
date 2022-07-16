class AddImageToGyms < ActiveRecord::Migration[6.0]
  def change
    add_column :gyms, :Image, :string
  end
end
