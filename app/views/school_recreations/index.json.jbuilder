json.array!(@school_recreations) do |school_recreation|
  json.extract! school_recreation, :id, :school_id, :recreation_id
  json.url school_recreation_url(school_recreation, format: :json)
end
