class User < ApplicationRecord
    has_many :user_proyects
    has_many :users_roles
    has_secure_password
    rolify

    
end
