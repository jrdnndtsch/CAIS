json.array!(@campus_types) do |campus_type|
  json.extract! campus_type, :id, :name
  json.url campus_type_url(campus_type, format: :json)
end
