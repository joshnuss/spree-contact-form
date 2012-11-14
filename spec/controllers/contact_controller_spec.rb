require 'spec_helper'

describe ContactController do
  describe "GET show" do
    it "should be a success" do
      get :show
      response.should be_success
    end

    it "should assign topics" do
      ContactTopic.should_receive(:all).and_return(:topics)
      get :show
      assigns(:topics).should == :topics
    end

    it "should assign message" do
      Message.should_receive(:new).and_return(:message)
      get :show
      assigns(:message).should == :message
    end
  end

  describe "POST create" do
    describe "when data is invalid" do
      it "should respond successfully" do
        post :create
        response.should be_success
      end

      it "should assign topics" do
        ContactTopic.should_receive(:all).and_return(:topics)
        post :create
        assigns(:topics).should == :topics
      end

      it "should not send email" do
        post :create
        ContactMailer.should_not_receive(:message_email)
      end
    end

    describe "when data is valid" do
      it "should send email" do
        message, mail = mock(:message, :save => true), mock(:mail)
        
        message.should_receive(:ip_address=).with('0.0.0.0')
        message.should_receive(:user_agent=).with('Rails Testing')
        Message.should_receive(:new).with('message_params').and_return(message)
        ContactMailer.should_receive(:message_email).with(message).and_return(mail)
        mail.should_receive(:deliver)

        post :create, :message => :message_params

        flash[:notice].should == I18n.t('contact_thank_you')
        response.should redirect_to('/')
      end
    end
  end
end
