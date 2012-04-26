module Spree
	class ContactController < BaseController
	  before_filter :load_topics

	  def show
	    @message = Message.new
	  end

	  def create
	    @message = Message.new(params[:message] || {})
	    if @message.save
	      ContactMailer.message_email(@message).deliver
	      flash[:notice] = t('contact_thank_you')
	      redirect_to root_path
	    else
	      render :action => 'show'
	    end
	  end

	private
	  def load_topics
	    @topics = ContactTopic.all
	  end
	end	
end