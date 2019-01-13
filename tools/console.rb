require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
#Events
e1 = Event.new("This is my event", 5000, 100)
e2 = Event.new("ANOTHA ONE", 6000, 10)

#Attendees
a1 = Attendee.new("Sivan", 24)
a2 = Attendee.new("Talia", 18)
a3 = Attendee.new("Keren", 22)
lucy = Attendee.new("Lucy", 22)

#Tickets
t1 = Ticket.new(a1, e1)
t2 = Ticket.new(a2, e2)
t3 = Ticket.new(a3, e1)
t4 = Ticket.new(a1, e2)

#Example of a variable definition that will be available in your Pry session once you've built out the model:



#The variable `lucy` will point to an instance of a new attendee

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
