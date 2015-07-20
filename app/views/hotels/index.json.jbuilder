json.array!(@hotels) do |hotel|
  json.extract! hotel, :id, :title, :rating, :breakfast, :room_description, :photo, :price, :float, :address_id
  json.url hotel_url(hotel, format: :json)
end
