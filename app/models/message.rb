class Message < ActiveRecord::Base
  validates_presence_of :name, :message, :topic_id

  validates_format_of   :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i
  validates_format_of   :order_number, :with => /(^$)|(^R\d{9}$)/i, :message => I18n.t("invalid_order_number")
  
  belongs_to :topic, :class_name => 'ContactTopic'
end
