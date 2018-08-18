class SimplePagesController < ApplicationController
  def index
  end
  
  def thank_you
    @name = params[:name]
    @email = params[:email]
    @phone = params[:phone]
    @message = params[:message]
    ActionMailer::Base.mail(from: @email,
        to: 'votenancyengrosemead2018@gmail.com',
        subject: "A new contact form message from #{@name} #{@email} #{@phone}",
        body: @message).deliver_now
  end

end
