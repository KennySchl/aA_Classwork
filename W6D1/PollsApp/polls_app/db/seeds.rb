# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

def rand_id
  rand(1..100_000)
end


ActiveRecord::Base.transaction do
  AnswerChoice.delete_all
  Poll.delete_all
  Question.delete_all
  Response.delete_all
  User.delete_all


user_1 = User.create(
  id: rand_id,
  username: 'user_one'
)

user_2 = User.create(
  id: rand_id,
  username: 'user_two'
)

poll_1 = Poll.create(
  id: rand_id,
  title: 'How hungry are you?',
  author_id: user_1.id
)

poll_2 = Poll.create(
  id: rand_id,
  title: 'How thirsty are you?',
  author_id: user_2.id
)

question_1 = Question.create(
  id: rand_id,
  text: 'Have you ate today?',
  poll_id: poll_1.id
)

question_2 = Question.create(
  id: rand_id,
  text: 'Have you drank today?',
  poll_id: poll_2.id
)

answer_choice_1 = AnswerChoice.create(
  id: rand_id,
  text: 'Yes',
  question_id: question_1.id
)

answer_choice_2 = AnswerChoice.create(
  id: rand_id,
  text: 'No',
  question_id: question_2.id
)

response_1 = Response.create(
  id: rand_id,
  user_id: user_1.id,
  answer_choice_id: answer_choice_1.id
)

response_2 = Response.create(
  id: rand_id,
  user_id: user_2,
  answer_choice_id: answer_choice_2.id
)

end