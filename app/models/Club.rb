class Club 

    attr_accessor :name 
    attr_reader :activity 

    def initialize(name, activity)
        @name = name 
        @activity = activity
    end

    def memberships
        Membership.all.select {|mem| mem.club == self}
    end

    def students
        memberships.map {|mem| mem.student}
    end
end
#club has many students through membership-
#club has many memberships -