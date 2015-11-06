json.array!(@proposals) do |proposal|
  json.extract! proposal, :id, :name, :description, :submit_date
  json.url proposal_url(proposal, format: :json)
end
