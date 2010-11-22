class Message
  include ActiveModel::Validations

  attr_accessor :name, :email, :message, :topic_id, :order_number

  validates_presence_of :name, :message, :topic_id

  validates_format_of   :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i
  validates_format_of   :order_number, :with => /(^$)|(^R\d{9}$)/i, :message => "should be in format R######### (i.e. R123123213)"


  def initialize(attributes={})
    attributes.each do |attr, val|
      send("#{attr}=", val)
    end
  end

  def topic
    @topic ||= ContactTopic.find(topic_id)
  end
end
