# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
some_contests = [
    {:name => 'c1', :location => 'reed', :date => '12/09/15'},
    {:name => 'c2', :location => 'kyle', :date => '12/10/15'}
]

some_contests.each do |contest|
    Contest.create!(contest)
end
