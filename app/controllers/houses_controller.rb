class HousesController < ApplicationController
    def index
        @houses = House.all
    end
    
      def show
        @house = Vet.find_by(id: params[:id])
      end
    end
    
end
