require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


# Put your variables here~!
kat = Passenger.new("Kat")
azomo = Passenger.new("Azomo")
sat = Passenger.new("Sat")

bob = Driver.new("Bob")
rob = Driver.new("Rob")

ride1 = Ride.new(rob, azomo, 123)
ride2 = Ride.new(rob, azomo, 2)
ride3 = Ride.new(bob, kat, 12.1)
ride4 = Ride.new(rob, kat, 99)
ride5 = Ride.new(bob, sat, 5)

binding.pry
