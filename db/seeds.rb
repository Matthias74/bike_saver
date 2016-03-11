# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Repair.destroy_all
User.destroy_all

thomas = User.create!(email: "thomas@user.com", password: "00000000")

repu = Repair.create!(address: "67 Waterloo Avenue, London", category: "flat tyre", user: thomas )
oberkampf = Repair.create!(address: "56 Backer Street, London", category: "worn brakes", user: thomas)
wagon = Repair.create!(address: "16 Gaudelet Villa, London", category: "broken chain", user: thomas)
