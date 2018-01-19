# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


julien = User.create(name: "Julien")
john = User.create(name: "John")

clean = Task.create(title: "Cleaning Bathroom", description: "Cleaning really well please", snake_id: 1)
scrub = Task.create(title: "Toilet Scrub", description: "It look jank. Fix it.", snake_id: 2)
poop = Task.create(title: "Whoops", description: "Clean up on aisle 4.", snake_id: 2)

john.jobs.build(task_id: 1)
