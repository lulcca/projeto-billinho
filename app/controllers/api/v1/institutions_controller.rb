class Api::V1::InstitutionsController < ApplicationController

    def index
        institutions = Institution.all
        render json: institutions, status: 200
    end

    def show
        institution = Institution.find(params[:id])
        if institution
            render json: institution, status: 200
        else
            render json: {error: "Institution not found"}
        end
    end

    def create
        institution = Institution.new(institution_params)
        if institution.save
            render json: institution, status: 200
        else
            render json: {error: "Error creating institution"}
        end
    end

    private
    def institution_params
        params.require(:institution).permit(:name, :cnpj, :ies_type)
    end
end