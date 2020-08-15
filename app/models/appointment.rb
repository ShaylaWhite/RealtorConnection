class Appointment < ApplicationRecord
    belongs_to :houses
    belongs_to :users 
end
