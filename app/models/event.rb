class Event

    attr_accessor :name, :total_cost, :ticket_price 

    @@all = []

    def initialize(name, total_cost, ticket_price)
        @name = name 
        @total_cost = total_cost
        @ticket_price = ticket_price
        @@all << self
    end

    def self.all 
        @@all 
    end

    def tickets 
        Ticket.all.select do |ticket|
            ticket.event == self 
        end
    end

    def sell_to_break_even
        revenue = tickets.length * ticket_price
        left_to_go = self.total_cost - revenue 
        if left_to_go > 0 
            return left_to_go / ticket_price
        else 
            return 0
        end
    end

    def attendees
        tickets.map do |ticket| 
            ticket.attendee
        end
    end

    def average_age
        age_sum = attendees.inject(0) do |sum, a| 
            sum += a.age 
        end 
        age_sum / attendees.length
    end

end

# Event.all
  # Returns an array for all Events
# Event#sell_to_break_even
  # Returns the number of Tickets that still need to be "purchased" for this Event before the Event reaches the break-even point.
  # If the Event has sold enough Tickets to break-even, return the number 0. 
# Event#attendees
  # Returns an array of Attendee that have Tickets for the Event
# Event#average_age
  # Returns the average age of all the Attendees that will be at the Event
