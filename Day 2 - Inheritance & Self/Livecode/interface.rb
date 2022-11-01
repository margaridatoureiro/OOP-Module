require_relative "lion"
require_relative "meerkat"
require_relative "warthog"

simba = Lion.new("Simba")
timon = Meerkat.new("Timon")
pumba = Warthog.new("Pumba")

puts simba.eat("gazelle")
puts timon.eat("scorpion")
# animals = []

# animals << simba
# animals << timon
# animals << pumba

# animals is an array of instances / objects 
animals = [simba, timon, pumba]

animals.each do |animal|
  puts animal.talk
end

