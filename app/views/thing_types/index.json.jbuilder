json.array!(@thing_types) do |thing_type|
  json.extract! thing_type, :id, :name
  json.url thing_type_url(thing_type, format: :json)
end
