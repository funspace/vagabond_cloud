json.array!(@vagrant_box_providers) do |vagrant_box_provider|
  json.extract! vagrant_box_provider, :id, :name, :url
  json.url vagrant_box_provider_url(vagrant_box_provider, format: :json)
end
