require_relative '../models/storage.rb'

class BoatingTest
    
    extend Storage

    attr_reader :student, :instructor, :name
    attr_accessor :status 

    @@all = []

    def initialize(student, name, status, instructor)

        @student = student
        @name = name
        @status = status 
        @instructor = instructor 

        self.class.all << self
    end

    def self.all
        @@all
    end
end
