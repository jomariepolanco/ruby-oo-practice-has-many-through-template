class Membership

    attr_reader :dues
    attr_accessor :student, :club 

    @@all = [] 

    def initialize(dues)
        @dues = dues 
        @student = student 
        @club = club
        @@all << self  
    end

    def self.all
        @@all 
    end

end
#membership belongs to student - 
#membership belongs to club -