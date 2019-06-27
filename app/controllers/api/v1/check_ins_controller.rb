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
              @check_in = check_in.new(check_in_params)
      
              if @check_in.save?
                render json: @check_in
              end
              
            end
            
          def update
              @check_in.update(checkin_params)
              render json: @check_in
          end


          private
          def find_checkin
              @check_in = CheckIn.find(params[:id])
          end


          def checkin_params
              params.require(:check_in).permit(:student_id, :counselor_id, :plan, :goal, :signal, :strategy, :signal_reflection, :emotion, :event, :reflection, :created_at)
          end
      end
    end
  end
