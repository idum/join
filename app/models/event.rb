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
  has_many :noted_events, dependent: :destroy
  attr_accessor :follow
  # attr_accessible :follow
  before_save :set_follow

  def self.allevents
    Event.all.sort_by(&:date)
  end

  def set_follow
    follow ?
      (self.noted_events.create(user: Current.user) if !self.is_following?)
      : (self.noted_events.find_by(user: Current.user).destroy if self.is_following?)
  end


  # interested_user queue the list of users that follow the event. May be substituted by a scope call
  has_many :interested_users, through: :noted_events, source: :user

  # boolean flag to check if an user (default = Current User), follow an event
  def is_following?(user = Current.user)
    self.noted_events.find_by(user: user)? true : false
  end

  # mark as followed or unfollowed the event for an user (default Current User)
  # def follow(user = Current.user, check = self.is_following?(user))
  #   check ? self.noted_events.create(user: user) : self.noted_events.find_by(user: user).destroy
  #   self.is_following?(user)? 1:0
  # end
end
