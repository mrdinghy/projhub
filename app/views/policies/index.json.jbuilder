json.array!(@policies) do |policy|
  json.extract! policy, :id, :name, :reference, :description, :effective_date, :expire_date
  json.url policy_url(policy, format: :json)
end
