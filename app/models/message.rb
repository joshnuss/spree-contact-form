class Message < ActiveRecord::Base
  validates :name, :message, :topic_id, :presence => true

  validates :email,        :format => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i
  validates :order_number, :format => /(^$)|(^R\d{9}$)/i
  
  belongs_to :topic, :class_name => 'ContactTopic'
end
