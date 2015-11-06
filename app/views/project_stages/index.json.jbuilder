json.array!(@project_stages) do |project_stage|
  json.extract! project_stage, :id, :name, :description
  json.url project_stage_url(project_stage, format: :json)
end
