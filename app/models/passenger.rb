class Passenger
    
    attr_reader :name 
    attr_accessor :total_distance
    @@all = []
    @@premium_members = []

    def initialize(name)
        @name = name
        @total_distance = 0
        @@all << self
    end

    def rides
        Ride.all.select { |ride|
            ride.passenger == self
        }
    end

    def drivers
        drivers = []
        Ride.all.each { |ride|
            if ride.passenger == self
                drivers << ride.driver
            end
        }
        drivers
    end

    def self.all
        @@all
    end

    def self.premium_members
        self.all.select { |member|
            member.total_distance > 100
        }
    end

end
