#class for Model2 goes here
#Feel free to change the name of the class
class Doctor

    attr_accessor :name, :specialty, :years_of_experience

    def initialize(name, specialty, years_of_experience = 1)
        @name = name
        @specialty = specialty
        @years_of_experience = years_of_experience
    end

    def appointments
        #find all appointments for doctor
        Appointment.all.select {|appt| appt.doctor == self}
    end

    def patients
        #find all patients for doctor through appts
        appointments.map {|appt| appt.patient}
    end

end
