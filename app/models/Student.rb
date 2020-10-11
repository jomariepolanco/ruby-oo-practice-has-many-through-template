class Student 

    attr_accessor :name, :age

    def initialize(name, age)
        @name = name 
        @age = age 
    end

    def memberships 
        Membership.all.select {|mem| mem.student == self}
    end

    def clubs
        memberships.map {|mem| mem.club}
    end
end
#student has many memberships - 
#student has many clubs through memberships-