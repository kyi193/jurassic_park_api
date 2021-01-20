json.extract! cage, :id, :max_capacity, :dinosaurs, :created_at, :updated_at
json.url cage_url(cage, format: :json)
json.num_of_dinosaurs cage.dinosaurs.count
json.cage_status do
  json.partial! 'cage_statuses/cage_status', cage_status: cage.cage_status
end
