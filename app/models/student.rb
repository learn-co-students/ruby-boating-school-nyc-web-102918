class Student
    extend Storage
    attr_reader :first_name

    @@all = []
    def initialize(first_name)
        @first_name = first_name

        self.class.all << self
    end

    def self.all
        @@all
    end


    def add_boating_test(test_name, status = "pending", instructor)
        BoatingTest.new(self, test_name, status, instructor)
    end

    def self.find_student(first_name)
        all.find{|student| student.first_name == first_name}
    end
end
