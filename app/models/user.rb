class User < ApplicationRecord

  belongs_to :company

  validates :name, presence: true
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP } 
  # validates :name, format: { :multiline => true, with: /^([a-zA-Z\\s]+|[\\p{L}\\s]+)$/ }

before_validation :downcase_email
before_save :uppercase_name

private 

def downcase_email
	self.email = email.downcase if email.present? 
end

def uppercase_name
	p name 
	self.name.upcase!
  end
end
