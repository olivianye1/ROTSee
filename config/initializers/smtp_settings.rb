ActionMailer::Base.smtp_settings = {
    :address => 'smtp.sendgrid.net',
    :port => '587',
    :authentication => :plain,
    :user_name => ENV['jhotsko'],
    :password => ENV['hWjFu@c5A4dtpTM'],
    :domain => 'heroku.com'
}
ActionMailer::Base.delivery_method = :smtp