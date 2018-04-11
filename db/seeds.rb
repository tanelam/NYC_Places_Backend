# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

response = RestClient::Request.execute(
method: :get,
url: 'https://api.sygictravelapi.com/1.0/en/places/list?parents=city:186&level=poi&limit=100',
headers: {"x-api-key": "ZODdJBp3X339DYx8TndoY7U5w3emeU5E1UuvmJdB"}
)

JSON.parse(response)["data"]["places"].each do |place|
  parse_name = place["name"]
  parse_category = place["categories"][0]
  parse_card_photo = place["thumbnail_url"]
  parse_description = place["perex"]
  parse_id = place["id"]


  Place.create(poi_id: parse_id, name: parse_name, category: parse_category, card_photo: parse_card_photo, description: parse_description)
end
