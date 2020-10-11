class Subscription

    attr_reader :payment_date
    attr_accessor :dues, :person, :magazine  

    @@all = []

    def initialize(payment_date, dues)
        @payment_date = payment_date
        @dues = dues 
        @person = person
        @magazine = magazine 
        @@all << self  
    end

    def self.all
        @@all 
    end 

end #end of subscription class

#subscription belongs to person - 
#subscription belongs to magazine -