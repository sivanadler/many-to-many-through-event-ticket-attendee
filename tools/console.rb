require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

# Attendees 
angela = Attendee.new("Angela", 22)
tony = Attendee.new("Tony", 40)
ricky = Attendee.new("Ricky", 67)
bart = Attendee.new("Bart", 29)
david = Attendee.new("David", 18)

# Events
walkathon = Event.new("Walkathon", 500, 10)
rock_concert = Event.new("Rock Concert", 900, 15)

#Tickets 
t1 = Ticket.new(walkathon, angela)
t2 = Ticket.new(rock_concert, angela)
t3 = Ticket.new(rock_concert, ricky)
t4 = Ticket.new(rock_concert, bart)
t5 = Ticket.new(walkathon, tony)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
