class ContactTopic < ActiveRecord::Base
  validates_presence_of :name, :emails
  validates_uniqueness_of :name
end
