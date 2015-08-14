json.array!(@academics) do |academic|
  json.extract! academic, :id, :subject, :class
  json.url academic_url(academic, format: :json)
end
