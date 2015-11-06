json.array!(@project_documents) do |project_document|
  json.extract! project_document, :id, :project_id, :user_id
  json.url project_document_url(project_document, format: :json)
end
