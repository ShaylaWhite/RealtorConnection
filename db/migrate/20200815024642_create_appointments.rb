class CreateAppointments < ActiveRecord::Migration[5.2]
  def change
    create_table :appointments do |t|
        t.time :time
        t.string :status 
        t.string :buyer_name 
        t.belongs_to :user 
        t.belongs_to :house 
       
        t.timestamps
    end
  end
end
