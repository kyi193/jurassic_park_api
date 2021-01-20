# Jurassic Park API by Kevin Yi

# How to start server:
Run in console:
```
bin/rails server
rails db:migrate
rails db:seed
```

## How to make a POST request to create a cage (on Postman):
![alt text](https://i.ibb.co/JRCYdm3/Screen-Shot-2021-01-20-at-1-23-17-PM.png)


Cage status id should either be 1 (ACTIVE) or 2 (DOWN)

## How to make a POST request to create a dinosaur:
![alt text](https://i.ibb.co/LdBhkFw/Screen-Shot-2021-01-20-at-1-36-31-PM.png)


Dinosaur breed id should be between 1-8 (1-4 are carnivores and 5-8 are herbivores)
Dinosaur must be placed into an existing cage id that has a cage status of ACTIVE

## How to make a GET request to view a cage by id:
![alt text](https://i.ibb.co/gFCFWrP/Screen-Shot-2021-01-20-at-1-39-45-PM.png)


The route is located in '/cages/:id.json'

## How to make a GET request to view all dinosaurs of a specific breed:
![alt text](https://i.ibb.co/h9pGPZ8/Screen-Shot-2021-01-20-at-1-44-07-PM.png)


The route is located in '/dinosaurs.json?dinosaur_breed=:dinosaur_breed' (for example: Tyrannosaurus or Stegosaurus)

## How to make a GET request to view all cages by cage status:
![alt text](https://i.ibb.co/djhmKkF/Screen-Shot-2021-01-20-at-1-46-50-PM.png)


The route is located in '/cages.json?cage_status=:cage_status' (either ACTIVE or DOWN)

## How to PATCH dinosaur to another cage that is ACTIVE:
![alt text](https://i.ibb.co/xszsHvg/Screen-Shot-2021-01-20-at-1-54-03-PM.png)


The route is located in 'http://localhost:3000/dinosaurs/:id' and cage id is specified in the body. 

Things to improve on/need:
  1. Enumerate certain values such as Active and Down cage statuses
  2. Add more specific validation errors when dealing with invalid API inputs
  3. Testing (rspec)
  
 How I tested:
  1. Use forms on the browser to add/edit/delete dinosaurs and cages
  2. Use external browser like Postman to make API requests
