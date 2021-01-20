json.extract! cage, :id, :max_capacity, :created_at, :updated_at, :cage_status, :dinosaurs
json.url cage_url(cage, format: :json)
json.num_of_dinosaurs cage.dinosaurs.count
