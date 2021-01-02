class User < ApplicationRecord
    has_secure_password
    has_many :projects

    validates :email, uniqueness: true, presence: true
    validates_presence_of :name
    

    def self.find_or_create_by_omniauth(auth)
        self.find_or_create_by(uid: auth['uid'], provider: auth['provider']) do |u|
            u.name = auth['info']['name']
            u.email = auth['info']['email']
            u.password = SecureRandom.hex(13)
         end
    end

end