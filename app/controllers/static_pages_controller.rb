class StaticPagesController < ApplicationController

  before_filter  :set_archive_list

  def home

  end

  def portfolio
    
    @projects     = Project.limit(5).order("created_at DESC")
    @project      = Project.last
  end

  def services

  end

  def about

  end

  def blog
    
    @recent_posts = Article.limit(5).order("created_at DESC")
    @categories   = Tag.limit(6).order("name")
    @article      = Article.last

  end

   def set_archive_list
    
    posts = Article.find(:all,:order => "created_at DESC")
    @archive_list = posts.collect do |p|
      [p.created_at.strftime("%b %Y"), p.created_at.year, p.created_at.month]
    end
    @archive_list.uniq!
  end


  def contact
    binding.pry
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

  def archives
    binding.pry
    start_time = Time.mktime( params[:year] || 2013, 
                              params[:month] || 1, 
                              params[:day] || 1)
    end_time = start_time.next_month
    @posts = Article.find(:all, 
      
      :conditions => ["created_at BETWEEN ? AND ?", start_time, end_time], 
      :order => "created_at DESC")
    render(:action => 'archives')
  end

end  # end of class


