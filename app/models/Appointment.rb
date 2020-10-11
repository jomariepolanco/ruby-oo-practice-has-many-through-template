#class for Model3 goes here
#Feel free to change the name of the class
class Appointment
  
    attr_accessor :date, :time, :patient, :doctor

    @@all = []

    def initialize(date, time)
        @date = date
        @time = time 
        @patient = patient
        @doctor = doctor 
        @@all << self 
    end

    def self.all
        @@all
    end

end
