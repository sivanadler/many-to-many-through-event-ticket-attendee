class Event

  attr_accessor :name, :total_cost, :ticket_price

  @@all = []

  # Event.all
    # Returns an array of all Events
  def self.all
    @@all
  end

  def initialize(name, total_cost, ticket_price)
    @name = name
    @total_cost = total_cost
    @ticket_price = ticket_price

    @@all << self
  end

# Event#sales_to_break_even
  # Returns the number of Tickets that still need to be "purchased" for this Event before the Event reaches the break-even point.
  # If the Event has sold enough Tickets to break-even, return the number 0.
  def sales_to_break_even

  end

  def tickets
    Ticket.all.select do |ticket|
      ticket.event == self
    end
  end

# Event#attendees
  # Returns an array of Attendee that have Tickets for the Event
  def attendees
    self.tickets.map do |ticket|
      ticket.attendee
    end
  end

# Event#average_age
  # Returns the average age of all the Attendees that will be at the Event
  def average_age
    age_sum = self.attendees.map do |attendee|
      attendee.age
    end
    age_sum.inject(:+) / attendees.length
  end
end #end of the Event class
