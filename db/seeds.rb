# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Place.__elasticsearch__.create_index! force: true
Tag.__elasticsearch__.create_index! force: true
Person.__elasticsearch__.create_index! force: true


tags = %w( Woodworking CNC UAV Recycling )
tags.each do |tag|
  t = Tag.find_or_create_by(name: tag)
  t.save
  print '.'
end

places = [ "AUT CoLab", "Tangleball" ]
places.each do |place|
  p = Place.find_or_create_by(name: place)
  p.save
  print '.'
end
