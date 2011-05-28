class User < ActiveRecord::Base
	
before_create :hash_password
before_update :hash_password
attr_accessor :confirm_password
validates_presence_of :username, :email, :password, :confirm_password
validates_uniqueness_of :username, :email
validates_length_of :username, :maximum=> 30, :minimum=> 4
validates_length_of :password, :minimum => 4, :allow_nil => true
validates_format_of :email, :with => /(\S+)@(\S+)/, :allow_nil => true
validates_format_of :username, :with => /^[A-Za-z\d_]+$/
validates_confirmation_of :password
validates_acceptance_of :terms_of_service
  	
def self.authenticate(email, password)  where(:email => email, :password => Digest::MD5.hexdigest(password)).first
end
def hash_password
self.password = Digest::MD5.hexdigest(self.password)
end

end
