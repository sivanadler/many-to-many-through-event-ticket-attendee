class Ticket #this is my join class

  attr_accessor :attendee, :event

  @@all = []

  # Ticket.all
      # Returns an array of all Ticket instances
  def self.all
    @@all
  end
  def initialize(attendee, event)
    @attendee = attendee
    @event = event

    @@all << self
  end
end
