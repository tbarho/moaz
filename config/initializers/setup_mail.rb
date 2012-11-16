ActionMailer::Base.smtp_settings = {
  :address              => "smtp.gmail.com",
  :port                 => 587,
  :domain               => "107.20.209.105",
  #:domain               => "moazamihomes.com",
  :user_name            => "t.barho@gmail.com",
  :password             => "eightywow",
  :authentication       => "plain",
  :enable_starttls_auto => true
}
