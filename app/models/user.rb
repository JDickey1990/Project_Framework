class User < ApplicationRecord
    has_secure_password
    has_many :projects

    validates :email, uniqueness: true, presence: true
    validates_presence_of :name
    
    

end