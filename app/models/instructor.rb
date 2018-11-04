class Instructor


  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name

    @@all << self
  end

  def self.all
    @@all
  end

  def self.pass_student(student_name, testName)
    answerTest = BoatingTest.all.find do |each_test|
      each_test.student.first_name == student_name && each_test.test_name == testName
    end
    answerTest.test_status = "passed"
    "status passed"
  end

  def self.fail_student(student_name, testName)
    answerTest = BoatingTest.all.find do |each_test|
      each_test.student.first_name == student_name && each_test.test_name == testName
    end
    answerTest.test_status = "failed"
    "status failed"
  end

  def self.student_grade_percentage(student_name)
    my_test_array = BoatingTest.all.select do |each_test|
      each_test.student.first_name == student_name
    end
    my_test_array
    pass_counter = 0
    pass_percent = 0
    my_test_array.each do |my_test|
      if my_test.test_status == "passed"
        pass_counter += 1
      end
    end
    pass_percent = pass_counter.to_f/my_test_array.length.to_f
    final = pass_percent.to_f*100
    return "%#{final}"

    end




end
