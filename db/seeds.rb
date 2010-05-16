# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#   
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Major.create(:name => 'Daley', :city => cities.first)

derick = User.create(:login => 'derick', :email => 'derick@email.unc.edu', :password => 'donkey', :password_confirmation => 'donkey')
dustin = User.create(:login => 'dustin', :email => 'tsang@email.unc.edu', :password => 'donkey', :password_confirmation => 'donkey')
# publisher = Publisher.create(:name => 'Prentice Hall')
# subject = Subject.new(:name => 'Science')
# book = Book.create(:title => 'Biology 101', :subject_id => subject, :publisher_id => publisher, :isbn => '1234567890')
# book = BookUser.create(:user_id => derick, :book_id => book)

# subject1 = Subject.create(:name => 'History')
subject2 = Subject.create(:name => 'Social Studies')
subject3 = Subject.create(:name => 'Science')

publisher1 = Publisher.create(:name => 'Prentice Hall')
publisher2 = Publisher.create(:name => 'McGraw Hill')
publisher3 = Publisher.create(:name => 'Wiley & Sons')

b1 = Book.create(:isbn => '978-0030740619', :publisher_id => publisher1.id, :title => 'History Alive', :subject_id => subject2.id) 
b2 = Book.create(:isbn => '978-0030934193', :publisher_id => publisher2.id, :title => 'World Geography Today', :subject_id => subject2.id) 
b3 = Book.create(:isbn => '978-1583710524', :publisher_id => publisher3.id, :title => 'Biology', :subject_id => subject3.id) 


q1 = Question.create(:user_id => derick.id, :book_id => b1, :page_number =>	109, :id =>	1, :question =>	'If each type of solid waste were recycled, which type would have the biggest impact on conserving trees?')
q2 = Question.create(:user_id => derick.id, :book_id => b1, :page_number =>	109, :id =>	2, :question =>	'Look at the water strider in the photograph below. Using what you have learned about the properties of water, explain how the insect can stand on the water\'s surface. 	Water has a high surface tension')
q3 = Question.create(:user_id => derick.id, :book_id => b1, :page_number =>	109, :id =>	3, :question =>	'What is the function of the structure labled A?	Making ATP')
q4 = Question.create(:user_id => dustin.id, :book_id => b1, :page_number =>	109, :id =>	4, :question =>	'The binding of a signal molecule by a receptor protein can	All of the Above')
q5 = Question.create(:user_id => derick.id, :book_id => b1, :page_number =>	109, :id =>	5, :question =>	'The thylakoid membranes of a chloroplast are the sites where 	All of the Above')

BookUser.create(:user_id => derick.id, :book_id => b1.id)
BookUser.create(:user_id => derick.id, :book_id => b2.id)
BookUser.create(:user_id => derick.id, :book_id => b3.id)
BookUser.create(:user_id => dustin.id, :book_id => b1.id)
BookUser.create(:user_id => dustin.id, :book_id => b2.id)
BookUser.create(:user_id => dustin.id, :book_id => b3.id)

Answer.create(:user_id => dustin.id, :question_id => q1.id, :answer => 'this is right for sure')
Answer.create(:user_id => dustin.id, :question_id => q2.id, :answer => 'i\m cheating')
Answer.create(:user_id => dustin.id, :question_id => q3.id, :answer => 'too hard to know')
Answer.create(:user_id => derick.id, :question_id => q4.id, :answer => 'i think this is the right answer')
Answer.create(:user_id => derick.id, :question_id => q4.id, :answer => 'just a guess')
