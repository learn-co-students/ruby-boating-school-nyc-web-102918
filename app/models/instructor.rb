class Instructor
  attr_accessor :name
  @@all = []
  def initialize (name)
    @name = name
    @@all << self
  end
  def self.all
    @@all
  end
#   def self.pass_student(student_name, test_name)
#   #self is for class method
#   found_bt =self.boating_tests.find do |bt|
#     bt.name == test_name
#   # BoatingTest.all.find do |boatingtest|
#   #   boatingtest.name == test_name && boatingtest.student == student-student_name
# #boatingtest.student will return student instance
#   end

  def boating_tests
    BoatingTest.all.select do |bt|
      bt.instructor == self

  end
end#end of the Instructor class
