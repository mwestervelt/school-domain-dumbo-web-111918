class School

  attr_accessor :name, :roster
  attr_reader :grade

  def initialize(name)
    @name = name
    @roster = {}
  end

  def grade=(grade)
    @grade= grade
  end

  def add_student(student, grade)
    if roster.keys.include?(grade)
      roster[grade] << student
    else
      roster[grade] = []
      roster[grade] << student
    end
  end

  def grade(grade)
    roster[grade]
  end

  def sort
    sorted_students = {}
    roster.map do |grade, student_list|
      sorted_students[grade] = student_list.sort
    end
    sorted_students
  end

end
