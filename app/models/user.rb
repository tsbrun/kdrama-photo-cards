class User < ApplicationRecord
    has_secure_password
    validates_presence_of :username, :password
    validates_uniqueness_of :username 

    def self.from_omniauth(auth)
        # Creates a new user only if it doesn't exist
        where(email: auth.info.email).first_or_initialize do |user|
            user.name = auth.info.name 
            user.email = auth.info.email
        end
    end
end
