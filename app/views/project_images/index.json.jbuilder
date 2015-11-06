json.array!(@project_images) do |project_image|
  json.extract! project_image, :id, :project_id, :user_id
  json.url project_image_url(project_image, format: :json)
end
