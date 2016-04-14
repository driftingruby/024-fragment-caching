# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
count = 100
count.times do |i|
	puts "Generating Story #{i}/#{count}"
	story = Story.new
	story.name = Faker::Hipster.sentence
	story.content = Faker::Hipster.paragraphs.join('<br/>')
	story.tag_list = Faker::Hipster.words(8)
	story.save
end
