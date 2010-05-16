class BookGrade < ActiveRecord::Base
  belongs_to :book
  belongs_to :grade
end
