class Ride
    
    attr_accessor :driver, :passenger, :distance
    @@all = []

    def initialize(driver, passenger, distance)
        @driver = driver
        @passenger = passenger
        @distance = distance
        
        passenger.total_distance = passenger.total_distance + distance

        driver.mileage = driver.mileage + distance
        
        @@all << self
    end

    def self.average_distance
        sum = 0
        self.all.each {|ride|
            sum += ride.distance
        }
        sum / self.all.size
    end

    def self.all
        @@all
    end

end
