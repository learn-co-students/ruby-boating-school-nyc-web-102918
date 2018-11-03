class BoatingTest

  attr_accessor :test_status
  attr_reader :student, :test_name, :instuctor

  def initialize(student, test_name, test_status, instuctor)
    @student = student
    @test_name = test_name
    @test_status = test_status
    @instuctor = instuctor
    @@all << self
  end

  @@all = []

  def self.all
    @@all
  end

end

# should initialize with student (Object), a boating
#   test name (String), a boating test status (String),
#   and an Instructor (Object)
# BoatingTest.all returns an array of all boating tests
