json.array!(@projects) do |project|
  json.extract! project, :name, :repository_url, :repository_type
  json.url project_url(project, format: :json)
end