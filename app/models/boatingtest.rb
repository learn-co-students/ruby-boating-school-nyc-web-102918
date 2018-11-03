class BoatingTest
attr_accessor :student, :instructor, :boating_test_name, :boating_test_status
@@all = []

  #should initialize with student (Object), a boating test name (String),
  #a boating test status (String), and an Instructor (Object)

  def initialize(student,boating_test_name,boating_test_status,instructor)
    @student = student
    @boating_test_name = boating_test_name
    @boating_test_status = boating_test_status
    @instructor = instructor
    @@all << self
  end


  #BoatingTest.all returns an array of all boating tests
  def self.all
    @@all
  end

end
