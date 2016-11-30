require 'pry'

class School
  def initialize(schoolname)
    @schoolname = schoolname
    @roster = {}
  end

  def roster
    @roster
  end

  def add_student(studentname, grade)
    if @roster[grade]
      @roster[grade] << studentname
    else
      @roster[grade] = []
      @roster[grade] << studentname
    end
  end

  def grade(gradelevel)
    @roster[gradelevel]
  end

  def sort
    @roster.each do |gradelevel, arraystudents|
      arraystudents.sort!
    end
  end
end

aschool = School.new("McGill")
aschool.add_student("Ashley", 9)
