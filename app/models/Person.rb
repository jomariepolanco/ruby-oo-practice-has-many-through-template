class Person

    def initialize(name, age)
        @name = name
        @age = age
    end

    def subscriptions
        #list subscriptions
        Subscription.all.select {|sub| sub.person == self}
    end

    def magazines
        #what magazines person is subscribed to 
        subscriptions.map {|sub| sub.magazine}
    end
end #end of person class

#person has many subscriptions - 
#person has many magazines THROUGH subscriptions -
