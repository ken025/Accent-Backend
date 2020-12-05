class User < ApplicationRecord
    has_many :boards

    has_secure_password
    
    validates :username, uniqueness: { case_sensitive: false }, presence: true
    validates :email, uniqueness: true, presence: true
end
