class ContactTopic < ActiveRecord::Base
  validates :name, :emails, :presence => true
  validates :name,          :uniqueness => true
end
