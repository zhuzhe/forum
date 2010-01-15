class User < ActiveRecord::Base
    has_many :posts
    
    def self.authenticate(email,password)
         User.find_by_email_and_hash_password(email,password)
    end
    
end
