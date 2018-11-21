class Attendee

    attr_accessor :name, :age

    @@all = []

    def initialize(name, age)
        @name = name 
        @age = age
        @@all << self 
    end

    def self.all 
        @@all
    end

    def tickets 
        Ticket.all.select do |ticket|
            ticket.attendee == self 
        end
    end

    def events 
        tickets.map do |ticket|
            ticket.event 
        end
    end

    def money_spent
        events.inject(0) do |sum, event|
            sum + event.ticket_price
        end
    end

end

# Attendee.all
  # Returns an array of all Attendees
# Attendee#events
  # Returns an array of all Events that the Attendee is attending.
# Attendee#money_spent_on_tickets
  # Returns the dollar amount this Attendee has spent on Tickets for Events