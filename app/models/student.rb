class Student
attr_accessor :first_name

def initialize(first_name)
  @first_name=first_name
end

def self.all
  BoatingTest.all.map{|boating_test|boating_test.student}.uniq
end

# def self.all
#   @@all
# end

def add_boating_test(test_name,status,instructor)
  BoatingTest.new(self,test_name,status,instructor)
end


def self.find_student(name)
  test_instance=BoatingTest.all.find{|boating_test|boating_test.student.first_name==name}
  test_instance.student
end
end
