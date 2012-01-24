class Message < ActiveRecord::Base
  validates_presence_of :sender
  validates_presence_of :receiver
end
