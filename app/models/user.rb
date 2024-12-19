class User < ApplicationRecord
  has_secure_password
  has_many :sessions, dependent: :destroy
  has_many :events
  has_many :noted_events, dependent: :destroy
  has_many :following_events, -> { order "date" }, through: :noted_events, source: :event


  normalizes :email_address, with: ->(e) { e.strip.downcase }

  # def following_events
  #   self.noted_events.events.sort_by(&:date)
  # end
end
