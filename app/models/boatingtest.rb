class BoatingTest

  attr_accessor :name, :status
  attr_reader :student, :instructor

@@all = []

    def initialize(student, name, status, instructor)
      @student = student
      @name = name
      @status = status
      @instructor = instructor

      @@all << self
    end

    def self.all
      @@all
    end

end #end of a BoatingTest class
