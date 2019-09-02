class School
  attr_accessor :name, :roster
  
  def initialize(name)
    @name = name
    @roster = {}
  end
  
  def add_student(student_name, grade)
    if roster[grade] == nil 
      roster[grade] = [student_name]
    else
      roster[grade] << student_name
    end
  end
  
  def grade(grade_number)
    roster[grade_number]
  end
  
  def sort 
    roster.sort
  end
end