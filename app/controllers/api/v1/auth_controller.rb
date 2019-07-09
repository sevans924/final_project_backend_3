class Api::V1::AuthController < ApplicationController


    def create
      @student = Student.find_by(username: params[:username])
      @parent = Parent.find_by(username: params[:username])
      @counselor = Counselor.find_by(username: params[:username])

      if @student && @student.authenticate(params[:password])
        token = issue_token(@student)
        render json: { jwt: token, student: @student }
      elsif @parent && @parent.authenticate(params[:password])
        token = issue_token(@parent)
        render json: { jwt: token, parent: @parent }
      elsif @counselor && @counselor.authenticate(params[:password])
        token = issue_token(@counselor)
        render json: { jwt: token, counselor: @counselor }
      else
        render json: {error: "User not authenticated"}, status: 401
      end

    end
  
    def show
      token = request.headers["Authorization"]
      @student = Student.find_by(id: student_id)
      @parent = Parent.find_by(id: parent_id)
      @counselor = Counselor.find_by(id: counselor_id)

      if @student
        render json: { id: @student.id, username: @student.username }
      elsif @parent
        render json: { id: @parent.id, username: @parent.username }
      elsif @counselor
        render json: { id: @counselor.id, username: @counselor.username }
      else
        render json: {error: "Invalid Token"}, status: 401
      end

    end
  
  
  
  end