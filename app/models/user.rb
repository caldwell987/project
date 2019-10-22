class User < ApplicationRecord
    
     #Relationships
     has_many :contacts
     has_many :friends
 
     #Password validation
     has_secure_password
 
     #To make sure user is filling out the whole form
     validates :username, :lastname, :firstname, :password_digest, presence: true 
     validates :password_digest, confirmation: true 
     validates :username, length: { in: 6..12 } 
     validates :username, uniqueness: true 
 
end
