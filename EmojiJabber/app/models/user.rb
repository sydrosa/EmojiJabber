class User < ApplicationRecord
    validates :username, uniqueness: true, presence: true
    # email needs to be unique
    validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }, uniqueness: true, presence: true
    has_secure_password
    
    has_one :profile
    has_many :messages
    has_many :rooms
    

end
