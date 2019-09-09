class User < ApplicationRecord
    validates :username, uniqueness: true
    validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
    has_secure_password
    
    has_one :profile
    has_many :messages
    has_many :rooms
    
end
