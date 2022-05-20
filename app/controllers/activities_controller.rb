class ActivitiesController < ApplicationController

    def index
        render json: Activity.all, status: :ok
    end
    
    def show 
        activity = find_activity
        render json: activity, status: :ok
    end
    
    def destroy
        activity = find_activity
        activity.destroy
        render json: {}, status: :ok
    end

    private

    def find_activity
    Activity.find(params[:id])
    end


end
