class BoatingTest


  attr_accessor :student, :test_name, :status, :instructor

  @@all = []

  def initialize(student, test_name, status, instructor)
    @student = student
    @test_name = test_name
    @status = "pending"  #so its already pending when you initialize a new test
    @instructor =  instructor

     @@all << self
  end

  def self.all
      @@all #this creates a single source of truth for where all the boating tests live
  end


end
