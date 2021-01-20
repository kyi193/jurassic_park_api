json.extract! dinosaur, :id, :name
json.url dinosaur_url(dinosaur, format: :json)
json.dinosaur_breed do
  json.partial! 'dinosaur_breeds/dinosaur_breed', dinosaur_breed: dinosaur.dinosaur_breed
end
