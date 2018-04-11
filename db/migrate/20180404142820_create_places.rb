class CreatePlaces < ActiveRecord::Migration[5.1]
  def change
    create_table :places do |t|
      t.string :name
      t.string :category
      t.string :main_photo
      t.string :description
      t.string :card_photo
      t.string :poi_id

      t.timestamps
    end
  end
end
