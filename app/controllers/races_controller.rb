class RacesController < ApplicationController
    def new 
      @race = Race.new
    end 

    def create 
        @race = Race.new(race_params)
        @race.user = current_user
        if @race.save
            redirect_to action: "index"
        else  
            #flash[:error] = @race.errors.full_messages
            render :new, status: :unprocessable_entity
        end
    end 

    def index 
        @races = current_user.races 
        puts @races
    end 

    def edit 

    end

    def race_params 
        params.require(:race).permit(:name, :distance, :finish_time, :city, :state, :race_date, :medal)
    end
end
