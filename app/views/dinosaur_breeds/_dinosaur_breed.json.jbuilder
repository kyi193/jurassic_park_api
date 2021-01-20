json.extract! dinosaur_breed, :id, :name
json.url dinosaur_breed_url(dinosaur_breed, format: :json)
json.diet_type do
  json.partial! 'diet_types/diet_type', diet_type: dinosaur_breed.diet_type
end
