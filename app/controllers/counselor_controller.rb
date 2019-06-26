class CounselorController < ApplicationController

    def index
        @counselors = Counselor.all
    end

    def show
    end

    def create
    end

    def edit
    end

private

    def find_counselor
        @counselor = Counselor.find(params[:id])
    end

    def counselor_params
        params.require(:counselor).permit(:first_name, :last_name, :email, :phone, :password)
    end


end
