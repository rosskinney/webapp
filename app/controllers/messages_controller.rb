class MessagesController < ApplicationController
  def new
    @message = Message.new
  end

  def create
    @message = Message.new(params[:message])
   
    if @message.valid?
       @email = "railspup@gmail.com"
        @from_email    = @message.email
        @from_name     = @message.name
        @from_message  = @message.content
        binding.pry
      Pony.mail({
        :to      => @email,
        :from    => @message.email,
        :subject => "You have a new message from #{@from_name}",
        :body    => 

       
        

"You have received a messagefrom 5280 Web Design.



Name:    #{@message.name}
Email:   #{@message.email}
Message: #{@message.content}
       
        



      "
      })
      # TODO send message here
     
      redirect_to root_url, :flash => { :success => "Message sent! Thanks for contacting us" }

    else
      render "new"
    end
  end
end