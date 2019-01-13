class Attendee

  attr_accessor :name, :age

  @@all = []

  # Attendee.all
    # Returns an array of all Attendees
  def self.all
    @@all
  end

  def initialize(name, age)
    @name = name
    @age = age

    @@all << self
  end

  def tickets
    Ticket.all.select do |ticket|
      ticket.attendee == self
    end
  end

  # Attendee#events
    # Returns an array of all Events that the Attendee is attending.
  def events
    tickets.map do |ticket|
      ticket.event
    end
  end

  # Attendee#money_spent
    # Returns the dollar amount this Attendee has spent on Tickets for Events
  def money_spent
    money_array = self.events.map do |event|
      event.ticket_price
    end
    money_array.inject(:+)
  end

end #End of the Attendee class
