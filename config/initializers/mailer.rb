# Only loads the Mock SMTP settings if tmp/mock_smtp.txt is present
#
# aliases for your bashrc/zshrc to make life easier
# alias mstd='touch tmp/mock_smtp.txt'
# alias msrd='rm tmp/mock_smtp.txt'

mock_smtp_indicator = Rails.root + 'tmp/mock_smtp.txt'

if mock_smtp_indicator.exist?
  ActionMailer::Base.smtp_settings = {
    :address => "localhost",
    :port => 1025,
    :domain => "mera-lakshya.com"
  }
end
