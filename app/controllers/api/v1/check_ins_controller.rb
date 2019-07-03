module Api
  module V1

    class CheckInsController < ApplicationController

          before_action :find_checkin, only: [:show, :edit, :update]

          def index
            @check_ins = CheckIn.all
            render json: @check_ins
          end 

          def show
            render json: @check_in
          end

          def edit

          end


          def create
              @check_in = CheckIn.new(checkin_params)
      
              if @check_in.valid?
                @check_in.save
                render json: @check_in
              end
              
            end
            
          def update
              @check_in.update(checkin_params)
              render json: @check_in
          end

          def student_plan
            @check_in = CheckIn.where(plan: true)
            render json: @check_in  
          end

          def student_check_in
            @check_in = CheckIn.where(plan: false) 
            render json: @check_in 
          end


          private
          def find_checkin
              @check_in = CheckIn.find(params[:id])
          end


          def checkin_params
              params.require(:check_in).permit(:student_id, :counselor_id, :plan, :goal, :signal, :strategy, :signal_reflection, :emotion, :event, :reflection)
          end
      end
    end
  end
