# Este archivo sirve para correr código que te permita 
# rellenar tu base de datos con información. 
user_1 = User.create(username: "user1", name: "pepe", email: "pepe@pepe", password: "pepe")
user_2 = User.create(username: "user2", name: "lulu", email: "lulu@lulu", password: "lulu")
user_3 = User.create(username: "user3", name: "juan", email: "juan@juan", password: "juan")
user_4 = User.create(username: "user4", name: "mateo", email: "mateo@mateo", password: "mateo")
user_5 = User.create(username: "user5", name: "pancho", email: "pancho@pancho", password: "pancho")

question_1 = Question.create(user_id: user_1.id, question_name: "¿Cuanto timpo llevas en CODEA?")
question_2 = Question.create(user_id: user_1.id, question_name: "¿Cual es tu comida preferida?")
question_3 = Question.create(user_id: user_1.id, question_name: "¿Animal que te gusta?")

question_4 = Question.create(user_id: user_2.id, question_name: "¿Porque llueve?")
question_5 = Question.create(user_id: user_2.id, question_name: "¿Que musica te gusta")
question_6 = Question.create(user_id: user_2.id, question_name: "¿Pelicula favorita?")

question_7 = Question.create(user_id: user_3.id, question_name: "¿Que pais visitaste este año?")
question_8 = Question.create(user_id: user_3.id, question_name: "¿que te gusta hecer en tu cumple años?")
question_9 = Question.create(user_id: user_3.id, question_name: "¿te gusta programar?")

question_10 = Question.create(user_id: user_4.id, question_name: "¿momento preferido del día?")
question_11 = Question.create(user_id: user_4.id, question_name: "¿bebida preferida?")
question_12 = Question.create(user_id: user_4.id, question_name: "¿tienes novi@?")

question_13 = Question.create(user_id: user_5.id, question_name: "¿Cuantas horas duermes?")
question_14 = Question.create(user_id: user_5.id, question_name: "¿nombre de tu mascota?")
question_15 = Question.create(user_id: user_5.id, question_name: "¿te gustan los patos?")

answer_1 = Answer.create(question_id: question_1.id, responder_id: user_1.id, answer_name: "3 meses")
answer_2 = Answer.create(question_id: question_1.id, responder_id: user_2.id, answer_name: "2 semanas")
answer_3 = Answer.create(question_id: question_1.id, responder_id: user_3.id, answer_name: "un día")
answer_4 = Answer.create(question_id: question_1.id, responder_id: user_4.id, answer_name: "4 meses")
answer_5 = Answer.create(question_id: question_1.id, responder_id: user_5.id, answer_name: "3 meses")

answer_6 = Answer.create(question_id: question_2.id, responder_id: user_1.id, answer_name: "arroz")
answer_7 = Answer.create(question_id: question_3.id, responder_id: user_2.id, answer_name: "perros")
answer_8 = Answer.create(question_id: question_3.id, responder_id: user_3.id, answer_name: "gatos")
answer_9 = Answer.create(question_id: question_4.id, responder_id: user_4.id, answer_name: "no se")
answer_10 = Answer.create(question_id: question_4.id, responder_id: user_5.id, answer_name: "por el ciclo del agua")

answer_11 = Answer.create(question_id: question_5.id, responder_id: user_1.id, answer_name: "pop")
answer_12 = Answer.create(question_id: question_5.id, responder_id: user_2.id, answer_name: "rok")
answer_13 = Answer.create(question_id: question_6.id, responder_id: user_3.id, answer_name: "Avengers")
answer_14 = Answer.create(question_id: question_7.id, responder_id: user_4.id, answer_name: "ninguno")
answer_15 = Answer.create(question_id: question_8.id, responder_id: user_5.id, answer_name: "viajar")

answer_16 = Answer.create(question_id: question_9.id, responder_id: user_1.id, answer_name: "si mucho")
answer_17 = Answer.create(question_id: question_10.id, responder_id: user_2.id, answer_name: "las mañanas")
answer_18 = Answer.create(question_id: question_10.id, responder_id: user_3.id, answer_name: "el atardecer")
answer_19 = Answer.create(question_id: question_11.id, responder_id: user_4.id, answer_name: "sumo de naranja")
answer_20 = Answer.create(question_id: question_12.id, responder_id: user_5.id, answer_name: "si por el momento")

answer_21 = Answer.create(question_id: question_13.id, responder_id: user_1.id, answer_name: "nueve")
answer_22 = Answer.create(question_id: question_13.id, responder_id: user_2.id, answer_name: "solo cinco")
answer_23 = Answer.create(question_id: question_13.id, responder_id: user_3.id, answer_name: "ocho")
answer_24 = Answer.create(question_id: question_14.id, responder_id: user_4.id, answer_name: "tommy")
answer_25 = Answer.create(question_id: question_15.id, responder_id: user_5.id, answer_name: "si son lindos")

answer_vote_1 = AnswerVote.create(answer_id: answer_1.id, user_id: user_1.id, vote: true)
answer_vote_2 = AnswerVote.create(answer_id: answer_2.id, user_id: user_2.id, vote: true)
answer_vote_3 = AnswerVote.create(answer_id: answer_3.id, user_id: user_3.id, vote: false)
answer_vote_4 = AnswerVote.create(answer_id: answer_5.id, user_id: user_3.id, vote: true)
answer_vote_5 = AnswerVote.create(answer_id: answer_8.id, user_id: user_4.id, vote: false)
answer_vote_6 = AnswerVote.create(answer_id: answer_10.id, user_id: user_5.id, vote: true)
answer_vote_7 = AnswerVote.create(answer_id: answer_15.id, user_id: user_1.id, vote: true)
answer_vote_8 = AnswerVote.create(answer_id: answer_16.id, user_id: user_2.id, vote: true)
answer_vote_9 = AnswerVote.create(answer_id: answer_23.id, user_id: user_5.id, vote: true)

question_vote_1 = QuestionVote.create(question_id: question_1.id, user_id: user_1.id, vote: true)
question_vote_2 = QuestionVote.create(question_id: question_6.id, user_id: user_2.id, vote: true)
question_vote_3 = QuestionVote.create(question_id: question_7.id, user_id: user_3.id, vote: false)
question_vote_4 = QuestionVote.create(question_id: question_9.id, user_id: user_4.id, vote: true)
question_vote_5 = QuestionVote.create(question_id: question_10.id, user_id: user_5.id, vote: true)
question_vote_6 = QuestionVote.create(question_id: question_11.id, user_id: user_5.id, vote: true)
question_vote_7 = QuestionVote.create(question_id: question_12.id, user_id: user_4.id, vote: true)
question_vote_8 = QuestionVote.create(question_id: question_12.id, user_id: user_1.id, vote: true)
question_vote_9 = QuestionVote.create(question_id: question_12.id, user_id: user_2.id, vote: true)
question_vote_10 = QuestionVote.create(question_id: question_15.id, user_id: user_5.id, vote: true)



