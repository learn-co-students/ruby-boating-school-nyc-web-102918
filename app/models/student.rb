class Student
  attr_accessor :first_name
  @@all = []

  def initialize (first_name)
    @first_name = first_name
    @@all << self
  end

  def self.all
    @@all
  end

  def find_student(first_student)
    # @@all.find do |student|#we are iterationg over an array of student instances
    # if student.first_name == first_name
    #   return student
    self.all.find do |student|
      student.first_name == first_name
  end
end
def add_boating_test(test_name, status, instructor)
  BoatingTest.new(self, test_name, status,)
  #student, name, status, instructor

end
end #end of a Class method
