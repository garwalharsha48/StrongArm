class NewsletterEmail < ActiveRecord::Base
	validates_presence_of :email, :first_name
	validates_format_of :email,:with => /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/
end
