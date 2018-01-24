# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

julien = User.create(name: "Julien", username: "Ju", password: "ju", password_confirmation: "ju")
lindsay = User.create(name: "Lindsay", username: "Li", password: "li", password_confirmation: "li")
andrea = User.create(name: "Andrea", username: "An", password: "an", password_confirmation: "an")
briana = User.create(name: "Briana", username: "Br", password: "br", password_confirmation: "br")
tania = User.create(name: "Tania", username: "Ta", password: "ta", password_confirmation: "ta")
john = User.create(name: "John", username: "Jo", password: "jo", password_confirmation: "jo")
joseph = User.create(name: "Joseph", username: "Jos", password: "jos", password_confirmation: "jos")
drew = User.create(name: "Drew", username: "Dr", password: "dr", password_confirmation: "dr")

handy = Category.create(name: "Handyman")
moving = Category.create(name: "Moving & Packing")
furniture = Category.create(name: "Furniture Assembly")
home = Category.create(name: "Home Improvement")
install = Category.create(name: "Mounting & Installation")
yard = Category.create(name: "Yard Work")
food = Category.create(name: "Food & Beverage")
misc = Category.create(name: "Miscellaneous")

bathroom = Task.create(title: "Bathroom Explosion", description: "Pipes burst. Help Help Help!", snake_id: 1, address: "225 Fort Washington Ave., New York, NY, 10032" , cheetah_points: 20)
wine = Task.create(title: "Wine Please", description: "I had a rough day. Please make it better with some Risling.", snake_id: 2, address: "11 Broadway Avenue, New York, NY 10004", cheetah_points: 20)
fan = Task.create(title: "Ceiling Fan Installation", description: "Gurl, it is hot. Fix it with my ceiling fan.", snake_id: 6, address: "Time Square" , cheetah_points: 20)
move = Task.create(title: "Gotta get out!", description: "Moving to UWS and need help packing and moving ASAP", snake_id: 3, address: "Harlem, New York", cheetah_points: 20)
grass = Task.create(title: "Grass be out of control", description: "Please mow my lawn. PLEASE!!!", snake_id: 4, address: "The Metropolitan Mueseum", cheetah_points: 20)

handy.tasks << bathroom
food.tasks << wine
home.tasks << fan
moving.tasks << move
yard.tasks << grass
