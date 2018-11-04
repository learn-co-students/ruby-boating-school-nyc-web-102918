class Instructor

  @@all = []

  def self.all
    @@all
  end

  def self.pass_student(student, test_name)
    BoatingTest.all.each do |test_instance|
      if test_instance.student == student && test_instance.test_name == test_name
        test_instance.test_status = "Pass"
      end
    end
  end

  def self.fail_student(student, test_name)
    BoatingTest.all.each do |test_instance|
      if test_instance.student == student && test_instance.test_name == test_name
        test_instance.test_status = "Fail"
      end
    end
  end

  def self.student_grade_percentage(student)
    passed = BoatingTest.all.select do |test|
      test.student == student && test.test_status == "Pass"
    end
    all = BoatingTest.all.select do |test|
      test.student == student
    end
    percent = (passed.count / all.count) * 100
    "#{percent}% passed"
  end

  def initialize(name)
    @name = name
    @@all << self
  end

end
