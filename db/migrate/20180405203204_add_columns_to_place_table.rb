class AddColumnsToPlaceTable < ActiveRecord::Migration[5.1]
  def change
    add_column :places, :photo_2, :string
    add_column :places, :video, :string
    add_column :places, :long_description, :string
  end
end
