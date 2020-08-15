class Appointment < ApplicationRecord
    belongs_to :houses
    belongs_to :users 

    validates :email, presence: true, uniqueness: true 
     
end
