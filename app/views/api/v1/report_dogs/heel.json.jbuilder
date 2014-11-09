json.things @things do |thing|
  json.name thing.name
  json.uuid thing.uuid
  json.avatar thing.avatar.url

  json.locations thing.locations do |location|
    json.time location.updated_at.to_i
    json.latitude location.latitude 
    json.longitude location.longitude 
    json.precision location.precision
  end
end
