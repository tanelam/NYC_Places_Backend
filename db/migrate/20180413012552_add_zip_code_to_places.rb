class AddZipCodeToPlaces < ActiveRecord::Migration[5.1]
  def change
    add_column :places, :zip, :string
  end
end
