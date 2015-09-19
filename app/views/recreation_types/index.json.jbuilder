json.array!(@recreations_types) do |recreations_type|
  json.extract! recreations_type, :id, :name
  json.url recreations_type_url(recreations_type, format: :json)
end
