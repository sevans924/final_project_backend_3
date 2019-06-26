class CheckInController < ApplicationController


    private
    def find_checkin
        @check_in = CheckIn.find(params[:id])
    end


    def checkin_params
        params.require(:check_in).permit(:student_id, :counselor_id, :plan, :goal, :signal, :strategy, :signal_reflection, :emotion, :event, :reflection, :created_at)
    end
end
