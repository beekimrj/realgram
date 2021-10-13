ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
  user_name: ENV['MAILER_USERNAME'],
  password: ENV['MAILER_PASSWORD'],
  domain: 'realgram.com',
  address: ENV['MAILER_ADDRESS'],
  port: '587',
  authentication: :plain,
  enable_starttls_auto: true
}
