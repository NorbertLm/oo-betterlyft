class Driver

    attr_reader :name
    attr_accessor :mileage
    @@all = []

    def initialize(name)
        @name = name
        @mileage = 0
        @@all << self
    end

    def passenger_names
        names = []
        Ride.all.each { |ride|
            if ride.driver == self
                names << ride.passenger.name
            end
        }
        names.uniq
    end

    def rides
        Ride.all.select{ |ride|
            ride.driver == self
        }
    end

    def self.all
        @@all
    end

    def self.mileage_cap(distance)
        self.allselect{ |driver|
            driver.mileage > distance
        }
    end

end
