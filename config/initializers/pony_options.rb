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



"Thank you #{params["contactName"]},

Your inquiry has been recieved. Someone will contact you shortly regarding the information you sent.

Name: #{params["contactName"]}
Email: #{params["email"]}
Phone: #{params["phone"]}
Question: #{params["question"]}

Thank you.
Rebecca
Recipe Book Developer",