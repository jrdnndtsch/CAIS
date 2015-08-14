json.array!(@school_academics) do |school_academic|
  json.extract! school_academic, :id, :school_id, :academic_id
  json.url school_academic_url(school_academic, format: :json)
end
