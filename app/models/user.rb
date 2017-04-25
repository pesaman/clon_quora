class User < ActiveRecord::Base
  # Remember to create a migration!
  include BCrypt

  has_many :answers
  has_many :questions
  has_many :answer_votes
  has_many :question_votes
  has_many :answers, through: :questions
  has_many :questions_answered, :foreign_key => :responder_id, :class_name => "Answer"

  validates :email, presence: true, uniqueness: true
  validates :password, :presence => true

  def password
    @password ||= Password.new(password_digest)
  end

  def password=(user_password)
    @password = Password.create(user_password)
    self.password_digest = @password
  end

  def self.authenticate(email, user_password)
    user = User.find_by(email: email)
    if user && (user.password == user_password)
      return user
    else
      nil
    end
  end
#fin de clase  
end

