class Instructor
attr_accessor :name
  def initialize(name)
    @name=name
  end

  def self.pass_student(student_name,test_name)
  selected_test=BoatingTest.all.find{|test|(test.student.student_name == student_name && test.name == test_name)}
  selected_test.status="passed"
  end


  def  self.fail_student(student_name,test_name) selected_test=BoatingTest.all.find{|test|test.student.first_name == student_name && test.name == test_name}
    selected_test.status="failed"
    selected_test
  end

  def self.student_grade_percentage(first_name)
    passed=0
    total=0
    BoatingTest.all.each{|test|
       if test.student.first_name == first_name
         binding.pry
         if test.status=="passed"
           passed +=1
           total +=1
         end
         if test.status=="failed"
           total+=1
         end
      end
    }
    passed/total.to_f
  end
end #End of class
