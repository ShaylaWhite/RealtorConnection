class AppointmentsController < ApplicationController

    def new
      @appointment = Appointment.new
    end 

    def create
        @appointment = current_user.appointments.build(appointment_params)
    
        if @appointment.save
            redirect_to appointment_path(appointment)
        else
            render :new
        end
    end 

    def index
        if params[:time]
            @appointments = Appointment.search_by_time(params[:time]).order_by_time
            @appointments = Appointment.order_by_time if @appointments == []
        else
            @appointments = Appointment.order_by_time
        end 
    end 

    def show
        set_appointment
    end

    def edit
        set_appointment
    end

    def update
        set_appointment
        if @appointment.update(appointment_params)
            redirect_to appointment_path(@appointment)
        else
            render :edit
        end 
    end 


    def destroy
        set_appointment
        @appointment.destroy
        redirect_to appointments_path
    end 

private

    def set_appointment
        @appointment = Appointment.find_by(id: params[:id])
        if !@appointment
            redirect_to appointments_path
        end
    end 

    def appointment_params
        params.require(:appointment).permit(:time, :status, :buyer_name, :house_id, house_attributes: [:name, :listing_price])

    end
end 
