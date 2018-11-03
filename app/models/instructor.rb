class Instructor
attr_accessor :name
@@all = []

#init with name
  def initialize(name)
    @name = name
    @@all << self

  end

  def self.all
    @@all
  end

  #should take in a student name and test name and return status passed
  def self.pass_student(student_name,test_name)
      student = Student.find_student student_name

      boating_test = BoatingTest.all.find do |boating|
                        boating.boating_test_name == test_name && boating.student == student
                    end

      boating_test.status = 'passed'
  end


  #Instructor.fail_student should take in a student name and test name and return status failed
  def self.fail_student(student_name,test_name)
      student = Student.find_student student_name

      boating_test = BoatingTest.all.find do |boating|
                        boating.boating_test_name == test_name && boating.student == student
                    end

      boating_test.status = 'failed'

  end

  #Instructor.student_grade_percentage should take in a student first name and output the
  #percentage of tests that they have passed
  def self.student_grade_percentage(first_name)
      student = Student.find_student first_name
      students_tests = BoatingTest.all.select do |test|
        test.student == student
      end

      passed = students_tests.select do |test|
        test.status == 'passed'
      end.length

      return passed / students_tests.length.to_f

  end









end #end of the class
