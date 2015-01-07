json.array!(@vagrant_boxes) do |vagrant_box|
  json.extract! vagrant_box, :id, :name, :description, :short_description, :versions_id
  json.url vagrant_box_url(vagrant_box, format: :json)
end
