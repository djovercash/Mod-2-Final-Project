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
home = Category.create(name: "Home Improvement")
install = Category.create(name: "Mounting & Installation")
yard = Category.create(name: "Yard Work")
food = Category.create(name: "Food & Beverage")
misc = Category.create(name: "Miscellaneous")

bathroom = Task.create(title: "Bathroom Explosion", description: "Pipes burst. Help Help Help! Water EVERYWHERE!", snake_id: 1, address: "225 Fort Washington Ave., New York, NY, 10032" , cheetah_points: 100)
wine = Task.create(title: "Wine Please", description: "I had a rough day. Please make it better with some Risling.", snake_id: 2, address: "11 Broadway Avenue, New York, NY 10004", cheetah_points: 10)
fan = Task.create(title: "Ceiling Fan Installation", description: "Gurl, it is hot. Fix it with my ceiling fan.", snake_id: 6, address: "Time Square" , cheetah_points: 20)
move = Task.create(title: "Gotta get out!", description: "Moving to UWS and need help packing and moving ASAP", snake_id: 3, address: "Harlem, New York", cheetah_points: 20)
grass = Task.create(title: "Grass be out of control", description: "Please mow then lawn. No one wants this! PLEASE!!!", snake_id: 4, address: "Central Park", cheetah_points: 20)
bathroom = Task.create(title: "Bathroom Explosion", description: "Pipes burst. Help Help Help!", snake_id: 5, address: "225 Fort Washington Ave., New York, NY, 10032" , cheetah_points: 20)
bathroom = Task.create(title: "Bathroom Explosion", description: "Pipes burst. Help Help Help!", snake_id: 6, address: "225 Fort Washington Ave., New York, NY, 10032" , cheetah_points: 20)
bathroom = Task.create(title: "Bathroom Explosion", description: "Pipes burst. Help Help Help!", snake_id: 7, address: "225 Fort Washington Ave., New York, NY, 10032" , cheetah_points: 20)
bathroom = Task.create(title: "Bathroom Explosion", description: "Pipes burst. Help Help Help!", snake_id: 8, address: "225 Fort Washington Ave., New York, NY, 10032" , cheetah_points: 20)
bathroom = Task.create(title: "Bathroom Explosion", description: "Pipes burst. Help Help Help!", snake_id: 9, address: "225 Fort Washington Ave., New York, NY, 10032" , cheetah_points: 20)
bathroom = Task.create(title: "Bathroom Explosion", description: "Pipes burst. Help Help Help!", snake_id: 10, address: "225 Fort Washington Ave., New York, NY, 10032" , cheetah_points: 20)
bathroom = Task.create(title: "Bathroom Explosion", description: "Pipes burst. Help Help Help!", snake_id: 11, address: "225 Fort Washington Ave., New York, NY, 10032" , cheetah_points: 20)
bathroom = Task.create(title: "Bathroom Explosion", description: "Pipes burst. Help Help Help!", snake_id: 12, address: "225 Fort Washington Ave., New York, NY, 10032" , cheetah_points: 20)
bathroom = Task.create(title: "Bathroom Explosion", description: "Pipes burst. Help Help Help!", snake_id: 13, address: "225 Fort Washington Ave., New York, NY, 10032" , cheetah_points: 20)
bathroom = Task.create(title: "Bathroom Explosion", description: "Pipes burst. Help Help Help!", snake_id: 14, address: "225 Fort Washington Ave., New York, NY, 10032" , cheetah_points: 20)
bathroom = Task.create(title: "Bathroom Explosion", description: "Pipes burst. Help Help Help!", snake_id: 15, address: "225 Fort Washington Ave., New York, NY, 10032" , cheetah_points: 20)
bathroom = Task.create(title: "Bathroom Explosion", description: "Pipes burst. Help Help Help!", snake_id: 16, address: "225 Fort Washington Ave., New York, NY, 10032" , cheetah_points: 20)
bathroom = Task.create(title: "Bathroom Explosion", description: "Pipes burst. Help Help Help!", snake_id: 17, address: "225 Fort Washington Ave., New York, NY, 10032" , cheetah_points: 20)

handy.tasks << bathroom
food.tasks << wine
home.tasks << fan
moving.tasks << move
yard.tasks << grass
