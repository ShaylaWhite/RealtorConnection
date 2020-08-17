class Appointment < ApplicationRecord
    validates :time, presence: true 

    belongs_to :houses
    belongs_to :users 

    scope :order_by_time, -> {order(:time)}
    

     
end
