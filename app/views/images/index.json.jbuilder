json.array!(@images) do |image|
  json.extract! image, :id, :name, :client_id, :image_ref
  json.url image_url(image, format: :json)
end
