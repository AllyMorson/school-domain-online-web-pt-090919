class School
  attr_accessor :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
    #roster hash starts off as being empty, add key/value pairs to it, where the value is an array?
  end

#create the new key grade and point it to an empty array. Then push the new value student_name into that array.
  def add_student(student_name, grade)
    roster[grade] ||= [] # || means "if" Let's say that we're adding the student "AC Slater" to grade 9. IF the roster already has a key of grade 9, we'll be able to push AC Slater into the array that the grade 9 key points to. 
    roster[grade] << student_name
  end

  def grade(student_grade)
    roster[student_grade] # returns all of the students in that grade in the roster hash.
  end

  # this method should arrange the students in each grade by alphabetical order within each array.
  def sort
    sorted = {} 
    roster.each do |grade, students| #iterate over each student and grade that will be sorted
      sorted[grade] = students.sort #sorted students array in grade hash
    end
    sorted #remember you must call on what is iterted in order for it to return in the code 
  end
end