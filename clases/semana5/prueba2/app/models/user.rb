class User < ActiveRecord::Base
	EMAIL_REGEX= /\a[A-Z0-9._%a-z\-]+@(?:[A-Z0-9a-z\-]+\.)+[A-Za-z]{2,4}$/
	has_one :account
	validates :login, presence: true,
						uniqueness: true,
						length: { :in => 3..20}
	validates :password, presence: true,
						length: { :in => 8..15}
	validates :email, presence: true,
						uniqueness: true,
						format: EMAIL_REGEX
end
