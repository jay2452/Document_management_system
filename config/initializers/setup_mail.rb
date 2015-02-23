ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
	:address        => 'smtp.sendgrid.net',
    :port           => '587',
    :authentication => :plain,
    :user_name      => 'app34247846@heroku.com',
    :password       => 'mtry5nxa',
    :domain         => 'heroku.com',
    :enable_starttls_auto => true
}