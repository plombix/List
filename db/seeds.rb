# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name:"  'Chicago"' }, { name:"  'Copenhagen"' }])
#   Mayor.create(name:"  'Emanuel"', city: cities.first)
Adj.delete_all


Adj.create!(name: "concept")
Adj.create!(name: "train")
Adj.create!(name: "routine")
Adj.create!(name: "reminder")
Adj.create!(name: "warning")
