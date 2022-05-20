class CampersController < ApplicationController
    def index
        render json: Camper.all, status: :ok, adapter: nil, except: [:created_at, :updated_at]
    end

    def show
        camper = find_camper
        render json: camper, status: :ok
    end

    def create
        camper = Camper.create!(camper_params)
        render json: camper, status: :created, adapter: nil, except: [:created_at, :updated_at]
    end

    private

    def find_camper
        # byebug
    Camper.find(params[:id])
    end

    def camper_params
        params.permit(:name, :age)
    end

end
