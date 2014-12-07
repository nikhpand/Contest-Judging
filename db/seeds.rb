# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
user = CreateAdminService.new.call
puts 'CREATED ADMIN USER: ' << user.email


question_types = QuestionType.create([
    {:question_type => "Organizational", :contest_id => 1},
    {:question_type => "T", :contest_id => 1},
    {:question_type => "R", :contest_id => 1}, 
    {:question_type => "Creativity", :contest_id => 1}
    ])
    
q_type = QuestionType.find_by_question_type("Organizational")
q = Question.new(:question => "Q1", :maximum_score => 5) 
q.question_type = q_type
q.save!

q_type = QuestionType.find_by_question_type("Creativity")
q = Question.new(:question => "Q2", :maximum_score => 5) 
q.question_type = q_type
q.save!

q_type = QuestionType.find_by_question_type("Creativity")
q = Question.new(:question => "Q3", :maximum_score => 10) 
q.question_type = q_type
q.save!

q_type = QuestionType.find_by_question_type("Organizational")
q = Question.new(:question => "Q4", :maximum_score => 6) 
q.question_type = q_type
q.save!

puts 'Dummy questions created'