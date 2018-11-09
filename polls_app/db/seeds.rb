# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Poll.destroy_all
Question.destroy_all
AnswerChoice.destroy_all
Response.destroy_all

User.create(username: 'Beavis')
User.create(username: 'Butthead')
User.create(username: 'Hank Hill')

users = User.all
Poll.create(title: 'Colors', author_id: users[0].id)
Poll.create(title: 'Foods', author_id: users[1].id)

polls = Poll.all
Question.create(text: 'What is your favorite color?', poll_id: polls[0].id)
Question.create(text: 'What is your color makes you sick?', poll_id: polls[0].id)
Question.create(text: 'What is your favorite food?', poll_id: polls[1].id)
Question.create(text: 'What food is the one you would throw at your parents face?', poll_id: polls[1].id)

questions = Question.all
AnswerChoice.create(text: 'Blue', question_id: questions[0].id)
AnswerChoice.create(text: 'Green', question_id: questions[0].id)
AnswerChoice.create(text: 'Pink', question_id: questions[0].id)

AnswerChoice.create(text: 'Blue', question_id: questions[1].id)
AnswerChoice.create(text: 'Green', question_id: questions[1].id)
AnswerChoice.create(text: 'Pink', question_id: questions[1].id)

AnswerChoice.create(text: 'Pizza', question_id: questions[2].id)
AnswerChoice.create(text: 'Toes', question_id: questions[2].id)
AnswerChoice.create(text: 'Beer', question_id: questions[2].id)

AnswerChoice.create(text: 'Pizza', question_id: questions[3].id)
AnswerChoice.create(text: 'Toes', question_id: questions[3].id)
AnswerChoice.create(text: 'Beer', question_id: questions[3].id)

answer_choices = AnswerChoice.all
Response.create(answer_choice_id: answer_choices[0].id, user_id: users[0].id)
Response.create(answer_choice_id: answer_choices[5].id, user_id: users[0].id)
Response.create(answer_choice_id: answer_choices[6].id, user_id: users[0].id)
Response.create(answer_choice_id: answer_choices[10].id, user_id: users[0].id)

Response.create(answer_choice_id: answer_choices[1].id, user_id: users[1].id)
Response.create(answer_choice_id: answer_choices[3].id, user_id: users[1].id)
Response.create(answer_choice_id: answer_choices[7].id, user_id: users[1].id)
Response.create(answer_choice_id: answer_choices[9].id, user_id: users[1].id)

Response.create(answer_choice_id: answer_choices[2].id, user_id: users[2].id)
Response.create(answer_choice_id: answer_choices[4].id, user_id: users[2].id)
Response.create(answer_choice_id: answer_choices[8].id, user_id: users[2].id)
Response.create(answer_choice_id: answer_choices[11].id, user_id: users[2].id)