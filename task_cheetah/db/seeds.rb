# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

julien = User.create(name: "Julien", username: "jt123", password: "123", password_confirmation: "123")
lindsay = User.create(name: "Lindsay", username: "lc123", password: "123", password_confirmation: "123")
andrea = User.create(name: "Andrea", username: "ac123", password: "123", password_confirmation: "123")
briana = User.create(name: "Briana", username: "bb123", password: "123", password_confirmation: "123")
tania = User.create(name: "Tania", username: "ta123", password: "123", password_confirmation: "123")
john = User.create(name: "John", username: "je123", password: "123", password_confirmation: "123")
joseph = User.create(name: "Joseph", username: "jl999", password: "999", password_confirmation: "999")
drew = User.create(name: "Drew", username: "do999", password: "999", password_confirmation: "999")
mo = User.create(name: "Maurice", username: "mr456", password: "456", password_confirmation: "456")
kenny = User.create(name: "Kenny", username: "kh456", password: "456", password_confirmation: "456")
nemanja = User.create(name: "Nemanja", username: "nd456", password: "456", password_confirmation: "456")
oleg = User.create(name: "Oleg", username: "oc456", password: "456", password_confirmation: "456")
mark = User.create(name: "Mark", username: "mb456", password: "456", password_confirmation: "456")
kevin = User.create(name: "Kevin", username: "kr456", password: "456", password_confirmation: "456")
anna = User.create(name: "Anna", username: "ak456", password: "456", password_confirmation: "456")
johann = User.create(name: "Johann", username: "j789", password: "789", password_confirmation: "789")
rishi = User.create(name: "Rishi", username: "r789", password: "789", password_confirmation: "789")
terrance = User.create(name: "Terrance", username: "t789", password: "789", password_confirmation: "789")
meryl = User.create(name: "Meryl", username: "m789", password: "789", password_confirmation: "789")
daniel = User.create(name: "Daniel", username: "d789", password: "789", password_confirmation: "789")
avi = User.create(name: "Avi", username: "a789", password: "789", password_confirmation: "789")

handy = Category.create(name: "Handyman")
moving = Category.create(name: "Moving & Packing")
furniture = Category.create(name: "Furniture Assembly")
tech = Category.create(name: "Technology")
install = Category.create(name: "Mounting & Installation")
yard = Category.create(name: "Yard Work")
food = Category.create(name: "Food & Beverage")
misc = Category.create(name: "Miscellaneous")

bathroom = Task.create(title: "Bathroom Explosion", description: "Pipes burst. Help Help Help! Water EVERYWHERE!", snake_id: 1, address: "225 Fort Washington Ave., New York, NY, 10032" , cheetah_points: 100)
wine = Task.create(title: "Wine Please", description: "I had a rough day. Please make it better with some Risling.", snake_id: 2, address: "Washington Heights", cheetah_points: 10)
fan = Task.create(title: "Ceiling Fan Installation", description: "Gurl, it is hot. Fix it with my ceiling fan.", snake_id: 6, address: "Time Square" , cheetah_points: 40)
move = Task.create(title: "Gotta get out!", description: "Moving to UWS and need help packing and moving ASAP", snake_id: 3, address: "Harlem, New York", cheetah_points: 80)
grass = Task.create(title: "Grass be out of control", description: "Please mow then lawn. No one wants this! PLEASE!!!", snake_id: 4, address: "Central Park", cheetah_points: 10)
ikea = Task.create(title: "Ikea Help", description: "My furniture arrived and I can't put it together. Anyone around to help?", snake_id: 5, address: "Battery Park" , cheetah_points: 45)
burger = Task.create(title: "CHEESEBUURGERR", description: "I'm stuck at work and starving! Please get me a burger!", snake_id: 18, address: "11 Broadway Avenue, New York, NY 1004" , cheetah_points: 95)
shelves = Task.create(title: "Shelves?", description: "So... I should be able to do this... but... Help me?", snake_id: 7, address: "Astoria, Queens" , cheetah_points: 25)
packing = Task.create(title: "Spare Room Packing", description: "Making a life change and need to pack up my spare room.", snake_id: 8, address: "Upper West Side, New York", cheetah_points: 100)
cat = Task.create(title: "Meow", description: "I need a cat sitter for tonight! Any takers?", snake_id: 9, address: "Hell's Kitchen, New York" , cheetah_points: 70)
playground = Task.create(title: "Fort Builder", description: "Building an epic fort in my back yard. I need experienced Carpenters", snake_id: 10, address: "Hudson River Valley, New York" , cheetah_points: 200)
heat = Task.create(title: "Heading Down. Ice Cold!", description: "I'm trying to fix my radiator and I can't figure it out. Someone out there to help?", snake_id: 11, address: "522 W. 157st, New York, NY 10032" , cheetah_points: 400)
laptop = Task.create(title: "Why you so cruel?", description: "My Dell (I know) is really made at me. Anyone help???", snake_id: 12, address: "Brooklyn, New York" , cheetah_points: 64)
tv = Task.create(title: "Television Color", description: "Last night my TV randomly turned black and white. Anyone with experience with televisions would be great! So much for a smart tv", snake_id: 13, address: "Wrigley Field" , cheetah_points: 60)
shoe = Task.create(title: "Shoe Heels", description: "My favorite heels broke and I can't part with them. Anyone have cobbler experience?", snake_id: 14, address: "Willis Tower" , cheetah_points: 146)
dog = Task.create(title: "Cutest Puppy Ever", description: "Can someone walk my dog? I've been called into a meeting", snake_id: 15, address: "Upper East Side, New York" , cheetah_points: 76)
sad = Task.create(title: "Sad Day", description: "I need jokes. Please come make me laugh", snake_id: 16, address: "Chinatown, New York" , cheetah_points: 30)
lights = Task.create(title: "Darkness Bad", description: "I've been lazy and my last light bulb burnt out. Can't someone help me out?", snake_id: 17, address: "Bronx, New York" , cheetah_points: 65)

handy.tasks << bathroom
handy.tasks << fan
handy.tasks << ikea
handy.tasks << shelves
handy.tasks << playground
handy.tasks << heat
handy.tasks << shoe
handy.tasks << lights

food.tasks << wine
food.tasks << burger

moving.tasks << move
moving.tasks << packing

furniture.tasks << ikea
furniture.tasks << fan
furniture.tasks << tv

tech.tasks << laptop
tech.tasks << tv

install.tasks << fan
install.tasks << ikea
install.tasks << shelves
install.tasks << playground
install.tasks << heat
install.tasks << lights

yard.tasks << grass
yard.tasks << playground

misc.tasks << cat
misc.tasks << dog
misc.tasks << wine
misc.tasks << burger
misc.tasks <<  shoe

100.times do
  Category.all.sample.tasks << Task.create(title: Faker::Hipster.sentence(3), description: Faker::Hipster.sentence(8), snake_id: User.all.sample.id, address: Faker::Address.country, cheetah_points: rand(10..200))
end
