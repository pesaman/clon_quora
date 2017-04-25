
enable :sessions
get '/' do
  erb :index
end

get '/registrar' do
 erb :registrar
end

get '/loogin_user' do
 erb :login
end

get "/home" do
  
  erb :home
end

get "/user_profile" do
 
  erb :user_profile
end

before '/user_profile' do
  unless session[:user_id]
    session[:error] = "No has iniciado sesión"
    #i need to redirect to index to avoid go to /secret again
    redirect to '/'
  end
end

get '/logout' do
  session.clear
  session[:logout] = "Has cerrado sesión correctamente"
  redirect to '/'
end

get '/my_answers' do
  @user_id = current_user.id
  @answers = User.find_by(id: @user_id).questions_answered

  erb :my_answers
end

get '/my_questions' do
  user_id = current_user.id
  p user_id
  @questions = User.find_by(id: user_id).questions
  erb :my_questions
end

get '/show_question/:id' do
 quest_id = params[:id]
 @question = Question.find(quest_id)
 erb :show
end

get '/positive_vote_question' do
  questionn_id = params[:question_id]
  p "s"*100
  p questionn_id
  current_user.id
  QuestionVote.create(question_id: questionn_id, user_id: current_user.id, vote: "true");  
   erb :_test
end

#Crear un voto negativo
get '/negative_vote_question' do
  questionn_id = params[:question_id]
  current_user.id
  QuestionVote.create(question_id: questionn_id, user_id: current_user.id,  vote: "false");
   erb :_test
end

get '/positive_vote_answer' do
  answerr_id = params[:answer_id]
  p answerr_id
    p "////" *50
  AnswerVote.create(answer_id: answerr_id, user_id: current_user.id, vote: "true");  
   erb :_test
 
end

#Crear un voto negativo
get '/negative_vote_answer' do
  answerr_id = params[:answer_id]
  p answerr_id
  p "////" *50
  current_user.id
  AnswerVote.create(answer_id: answerr_id, user_id: current_user.id,  vote: "false");
  erb :_test
end

post '/add_answer/:id' do
  userid = current_user.id
  question_1 = params[:id]
  answer = params[:question_user]
  Answer.create(question_id: question_1, responder_id: userid, answer_name: answer)
  redirect to "/home"
end

post '/create_question' do
  question = Question.new(user_id: current_user.id, question_name: params[:question_user])
  question.save
  if question.valid?
    session[:correct_user] = "Question Cretate"
    redirect to "/home"
  else     
    session[:incorrect_user] = "No puedes dejar campos vacios" 
    redirect to "/home"     
  end
end


post '/profile' do
  @email = params[:email]
  @password = params[:password]
  valid_user = User.authenticate(@email, @password)
  if valid_user
    p session[:user_id] = valid_user.id
    redirect to "/home"
  else
    session[:incorrect_login] = "Email y/o password incorrectos"
    redirect to '/loogin_user'
  end
end




post '/create_user' do
  username = params[:username]
  name = params[:name]
  email = params[:email]
  password_digest = params[:password]
  existe = User.find_by(email: email)
  user  = User.new(username: username, name: name, email: email, password: password_digest)
  user.save
  if user.valid?
      session[:user_id] = user.id
      session[:correct_user] = "Usuario Creado con Exito"
      redirect to '/loogin_user'
  else 
    if existe
      session[:incorrect_user] = "Usuario ya Existe Intenta de Nuevo"
      redirect to '/registrar'
      else
    
      session[:incorrect_user] = "No puedes dejar campos vacios"
      redirect to '/registrar'
    end
  end
end


get '/update_profilee' do
erb :update_profile
end


post '/update_profileee' do
  p params
  username = params[:username]
  name  = params[:name]
  email  = params[:email]
  password = params[:password]
  existe = User.find_by(email: email)
  p user = User.find(current_user.id)
  if password.empty?
    user.update_attributes(username: username, name: name, email: email)
    if user.valid?
        session[:user_id] = user.id
        session[:correct_user] = "Cambios Guardados"
        redirect to('/user_profile')
    else 
      if existe
        session[:incorrect_user] = "Usuario ya Existe Intenta de Nuevo"
        erb :update_profile
        else
      
        session[:incorrect_user] = "No puedes dejar campos vacios"
         erb :update_profile
      end
    end
  else
    user.update_attributes(username: username, name: name, email: email, password: password)
    if user.valid?
        session[:user_id] = user.id
        session[:correct_user] = "Cambios Guardados"
        redirect to('/user_profile')
    else 
      if existe
        session[:incorrect_user] = "Usuario ya Existe Intenta de Nuevo"
        erb :update_profile
        else
      
        session[:incorrect_user] = "No puedes dejar campos vacios"
         erb :update_profile
      end
    end
  end
end
 


  

  
