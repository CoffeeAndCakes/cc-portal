# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'csv'

CSV.foreach('db/message.csv') do |row|
  Message.create(
    message: row[0],
    by: row[1]
  )
end

CSV.foreach('db/event.csv') do |row|
  Event.create(
    title: row[0],
    contents: row[1],
    presenter_id: row[2],
    date: row[3],
    place: row[4]
  )
end
