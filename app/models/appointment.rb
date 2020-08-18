class Appointment < ApplicationRecord
    validates :time, presence: true 

    belongs_to :houses, optional: true 
    belongs_to :users 

    scope :order_by_time, -> {order(:time)}
    scope :sold, -> {where(status: "Sold")}
    scope :hold, -> {where(status: "Hold")}
    scope :market, -> {where(status: "Market")}

    scope :search_by_time,  -> (search_time){where("time = ?" , search_time)}

     
end
