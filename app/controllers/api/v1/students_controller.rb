class Api::V1::StudentsController < ApplicationController

    def index
        students = Student.all
        render json: students, status: 200
    end

    def show
        student = Student.find(params[:id])
        if student
            render json: student, status: 200
        else
            render json: {error: "Student not found"}
        end
    end

    def create
        student = Student.new(student_params)
        if student.save
            render json: student, status: 200
        else
            render json: {error: "Error creating student"}
        end
    end

    private
    def student_params
        params.require(:student).permit(:name, :cpf, :birth, :phone, :gender, :payment_method)
    end
end