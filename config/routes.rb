Rails.application.routes.draw do
  resources :dinosaurs
  resources :diet_types
  resources :dinosaur_breeds
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
