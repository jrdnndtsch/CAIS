json.array!(@school_infos) do |school_info|
  json.extract! school_info, :id, :school_id, :info_id
  json.url school_info_url(school_info, format: :json)
end
