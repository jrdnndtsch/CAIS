json.array!(@academic_types) do |academic_type|
  json.extract! academic_type, :id, :name
  json.url academic_type_url(academic_type, format: :json)
end
