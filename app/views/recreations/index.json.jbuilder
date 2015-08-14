json.array!(@recreations) do |recreation|
  json.extract! recreation, :id, :type, :activity
  json.url recreation_url(recreation, format: :json)
end
