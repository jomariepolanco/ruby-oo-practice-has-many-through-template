#class for Model1 goes here
#Feel free to change the name of the class
class Patient
    attr_accessor :name
    attr_reader :illness, :age  

    def initialize(name, illness, age)
        @name = name 
        @illness = illness 
    end

    def appointments
        #find all appointments for the patient
        Appointment.all.select {|appt| appt.patient == self}
    end

    def doctors
        #find all the doctors the patient is seeing through appointments 
        appointments.map {|appt| appt.doctor}
    end

end #end of classroom class
