json.array!(@dep002s) do |dep002|
  json.extract! dep002, :id, :product_key, :name, :description, :picurl, :whole_sale, :retail_value
  json.url dep002_url(dep002, format: :json)
end
