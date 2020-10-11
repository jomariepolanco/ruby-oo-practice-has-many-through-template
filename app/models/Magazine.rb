class Magazine

    attr_accessor :name

    def initialize(name)
        @name = name 
    end

    def subscriptions
        #what subs are of the magazine
        Subscription.all.select {|sub| sub.magazine == self}
    end

    def person
        #who is subscribed to the magazine
        subscriptions.map {|sub| sub.person}
    end
end #end of magazine class

#magazine has many people through subscriptions
#subscription belongs to magazine