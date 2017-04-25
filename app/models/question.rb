class Question < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :user
  has_many :question_votes
  has_many :answers
  validates :question_name, :presence => true
  
end
