require 'spec_helper'

describe ContactTopic do
  it "should require name" do
    topic = create_contact_topic(:name => nil)
    topic.should have(1).error_on(:name)
  end

  it "should require unique name" do
    topic1 = create_contact_topic(:name => 'Customer Support')
    topic2 = create_contact_topic(:name => 'Customer Support')

    topic1.should have(0).error_on(:name)
    topic2.should have(1).error_on(:name)
  end

  it "should require emails" do
    topic = create_contact_topic(:emails => nil)
    topic.should have(1).error_on(:emails)
  end

  it "should be valid when all fields provided" do
    topic = create_contact_topic
    topic.should be_valid
  end

  def create_contact_topic(options={})
    ContactTopic.create({:name => 'Customer Support', :emails => 'test@123.org,test2@123.org'}.merge(options))
  end
end
