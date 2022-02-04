class Api::V1::PaymentsController < ApplicationController

    def index
        payments = Payment.all
        render json: payments, status: 200
    end

    def show
        payment = Payment.find(params[:id])
        if payment
            render json: payment, status: 200
        else
            render json: {error: "Institution not found"}
        end
    end
end