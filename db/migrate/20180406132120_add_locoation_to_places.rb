class AddLocoationToPlaces < ActiveRecord::Migration[5.1]
  def change
    add_column :places, :longitud, :string
    add_column :places, :latitud, :string
  end
end
