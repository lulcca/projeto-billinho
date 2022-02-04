class Api::V1::EnrollmentsController < ApplicationController

    def index
        enrollments = Enrollment.all
        render json: enrollments, status: 200
    end

    def show
        enrollment = Enrollment.find(params[:id])
        if enrollment
            render json: enrollment, status: 200
        else
            render json: {error: "Enrollment not found"}
        end
    end

    def create
        enrollment = Enrollment.new(enrollment_params)
        if enrollment.save
            
            payments_value = enrollment.total_value / enrollment.max_payment
            
            y = Date.today.year
            m = Date.today.month
            d = enrollment.payment_due_date

            if (d<=Date.today.day)
                #fixing due_date in case the day is today or had already passed
                d_date = Date.new(y,m,d) >> 1
            else
                d_date = Date.new(y,m,d)
            end

            for p in 0..(enrollment.max_payment - 1)
                payment = Payment.new(value: payments_value, due_date: d_date >> p ,enrollment_id: enrollment.id)
                payment.save
            end

            render json: enrollment, status: 200
        else
            render json: {error: "Error creating enrollment"}
        end
    end

    private
    def enrollment_params
        params.require(:enrollment).permit(:total_value, :max_payment, :payment_due_date, :course_name, :institution_id, :student_id)
    end
end