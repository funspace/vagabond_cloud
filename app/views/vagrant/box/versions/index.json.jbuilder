json.array!(@vagrant_box_versions) do |vagrant_box_version|
  json.extract! vagrant_box_version, :id, :version, :status, :description_html, :description_markdown, :providers_id
  json.url vagrant_box_version_url(vagrant_box_version, format: :json)
end
