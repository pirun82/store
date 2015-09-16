json.array!(@dep001s) do |dep001|
  json.extract! dep001, :id, :product_key, :name, :description, :picurl, :whole_sale, :retail_value
  json.url dep001_url(dep001, format: :json)
end
