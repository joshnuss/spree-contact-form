require 'spec_helper'

describe Message do
  it "should require name" do
    message = create_message(:name => nil)
    message.should have(1).error_on(:name)
  end

  it "should require email" do
    message = create_message(:email => nil)
    message.should have(1).error_on(:email)
  end

  it "should require valid email" do
    message = create_message(:email => 'test')
    message.should have(1).error_on(:email)
  end

  it "should require message" do
    message = create_message(:message => nil)
    message.should have(1).error_on(:message)
  end

  it "should require topic" do
    message = create_message(:topic_id => nil)
    message.should have(1).error_on(:topic_id)
  end

  it "should should not require order number" do
    message = create_message(:order_number => '')
    message.should have(0).errors_on(:order_number)
  end

  it "should require valid order number when provided" do
    message = create_message(:order_number => 'x')
    message.should have(1).error_on(:order_number)
    message = create_message(:order_number => 'R123123123')
    message.should have(0).errors_on(:order_number)
  end

  it "should find the topic" do
    topic = ContactTopic.create :name => 'Customer Support', :emails => 'test@123.org'
    message = create_message(:topic_id => topic.id)
    message.topic.should == topic
  end

  it "should be valid when all required fields provided" do
    message = create_message
    message.should be_valid
  end

  def create_message(options = {})
    Message.new({:name => 'Josh', :email => 'test@1234.org', :topic_id => 1, :message => 'Nice website'}.merge(options))
  end
end
