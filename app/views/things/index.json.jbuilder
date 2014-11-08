json.array!(@things) do |thing|
  json.extract! thing, :id, :uuid, :isMissing, :latitude, :longitude, :precision, :description, :name, :age
  json.url thing_url(thing, format: :json)
end
