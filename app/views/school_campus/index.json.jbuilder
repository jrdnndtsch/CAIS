json.array!(@school_campus) do |school_campu|
  json.extract! school_campu, :id, :school, :campu
  json.url school_campu_url(school_campu, format: :json)
end
