class Instructor

    extend Storage 

    attr_reader :name

    @@all = []
    def initialize(name)
        @name = name
        self.class.all << self
    end

    def self.all
        @@all
    end

    # def boating_tests
    #     BoatingTest.all.select{|test| test.instructor == self}
    # end

    def self.find_student_tests(student_name)
        BoatingTest.all.select{|test| test.student.first_name == student_name}
    end

#Should this be class methods or instance methods
    def self.pass_student(student_name, test_name)
       student_tests = Instructor.find_student_tests(student_name)
       
       student_test = student_tests.detect{|test| test.name == test_name}

        student_test.status = "passed"
    end

    def self.fail_student(student_name, test_name)
        student_tests = Instructor.find_student_tests(student_name)
        
        student_test = student_tests.detect{|test| test.name == test_name}

        student_test.status = "failed"
    end

    def self.student_grade_percentage(student_name)
        
        passed_tests = find_student_tests(student_name).select{|test| test.status == "passed"}.length.to_f

        all_tests = find_student_tests(student_name).length

        "#{passed_tests/all_tests * 100}%"
    end


end
