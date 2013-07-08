# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require "#{Rails.root}/lib/student_scrape.rb"
scraped_students = StudentScrape.scrape_students.compact
scraped_students.each do |s|
 Student.create(:name => s.name, 
                :tagline => s.tagline, 
                :bio => s.bio, 
                :treehouse_profile => s.treehouse, 
                :linkedin => s.linkedin,
                :twitter => s.twitter,
                :github => s.github,
                :quote => s.quote,

end

   