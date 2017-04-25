class Answer < ActiveRecord::Base
  # Remember to create a migration!
  has_many :answer_votes
  belongs_to :question
  belongs_to :user
  validates :answer_name, :presence => true 
end
