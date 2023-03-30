class Company < ApplicationRecord
	has_many :users
	has_many :posts, through: :users
  validates :name, format: { :multiline => true, with: /^([a-zA-Z\\s]+|[\\p{L}\\s]+)$/ }

end


