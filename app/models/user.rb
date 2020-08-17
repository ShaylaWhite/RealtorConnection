class User < ApplicationRecord
    has_secure_password
    has_many :appointments
    has_many :houses, through: :appointments

    validates :email, presence: true, uniqueness: true 
end
