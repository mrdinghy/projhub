json.array!(@implementers) do |implementer|
  json.extract! implementer, :id, :name, :description
  json.url implementer_url(implementer, format: :json)
end
