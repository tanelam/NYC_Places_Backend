class PlaceSerializer < ActiveModel::Serializer
  attributes :id, :name, :category, :main_photo, :description, :card_photo, :poi_id, :photo_2, :video, :long_description, :latitud, :longitud, :address
end
