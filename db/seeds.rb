# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Steve = User.new([{username: "splesha"}, {password: "splesha"}, {firstname1: "Steve"}, {lastname1: "Plesha"}, {firstname2: "Jen"}, {lastname2: "Plesha"}, {numguests: 0}, {maxguests: 0}, {role: "admin"})