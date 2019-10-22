class User < ApplicationRecord
    has_many :contacts
    has_many :friends
    has_secure_password
end
