ruby script/generate scaffold publisher name:string
ruby script/generate scaffold book title:string isbn:string publisher:references
ruby script/generate scaffold question question:text book:references chapter:string section:string page_number:integer
ruby script/generate scaffold answer answer:text question:reference
ruby script/generate scaffold grade level:string 
ruby script/generate scaffold subject name:string
ruby script/generate resource book_user book:references user:references
ruby script/generate resource book_grade book:references grade:references
