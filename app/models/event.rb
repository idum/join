class Event < ApplicationRecord
  # Event class is the core of the app. It manage the events in a zone.
  # 0.1: Base columns of Event:
  # name:text; the name of the event
  # descr:text; the descrition of the event
  # address:text; the position of the event (now a string, to be adapted at standard map address)
  # date:time; the date of the event
  #
  # 0.2: Base management colums:
  # user -> reference to user; the creator of the event
  # interested_users -> cross table with user; user that follow the event
  belongs_to :user
  has_many :noted_events

  def interested_users
    self.noted_events.users
  end
end
