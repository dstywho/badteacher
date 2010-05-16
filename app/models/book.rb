class Book < ActiveRecord::Base
  belongs_to :publisher
  has_many :book_grades
  has_many :grades, :through => :book_grades
  has_many :questions
  has_many :book_users
  has_many :users, :through => :book_users
  
  def to_s
    title
  end
end
