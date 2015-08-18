json.array!(@infos) do |info|
  json.extract! info, :id, :description, :department_director, :percentage_at_college
  json.url info_url(info, format: :json)
end
