json.array!(@products) do |product|
  json.extract! product, :id, :name, :subtitle, :image_url, :description, :note, :price
  json.url product_url(product, format: :json)
end
