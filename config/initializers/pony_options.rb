Pony.options = {
  :from  => "railspup@gmail.com",
  :via   => :smtp,
  :via_options => {
    :address              => "smtp.gmail.com",
    :port                 => "587",
    :enable_starttls_auto => true,
    :user_name            => "railspup@gmail.com",
    :password             => "Ruby-2012",
    :authentication       => :plain,
    :domain               => "HELO",
  },
}



