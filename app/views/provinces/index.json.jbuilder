json.array!(@provinces) do |province|
  json.extract! province, :id, :name, :description, :capital, :population, :area, :iso
  json.url province_url(province, format: :json)
end
