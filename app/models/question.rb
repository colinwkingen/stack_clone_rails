class Question < ActiveRecord::Base
  validates :author, :presence => true
  validates :title, :presence => true
  validates :question, :presence => true
end
