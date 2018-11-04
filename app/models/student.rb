class Student

    attr_accessor :first_name

    @@all = []

    def initialize(first_name)
      @first_name = first_name

      @@all << self
    end

    def self.all
      BoatingTest.all.map do |each_test|
        each_test.student
      end
    end


    def add_boating_test(test_name, test_status, instructor)

      BoatingTest.new(self, test_name, test_status, instructor)

    end

    def my_tests_by_name
      BoatingTest.all.select do |each_test|
        each_test.student.first_name == self.first_name
      end

    end

    def self.find_student(first_name)
      answer = nil
      BoatingTest.all.each do |each_test|
        if each_test.student.first_name == first_name
        answer = each_test.student
        end
      end
      answer
    end


end #LAST END
