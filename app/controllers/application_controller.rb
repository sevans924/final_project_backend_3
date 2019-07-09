class ApplicationController < ActionController::API
    
    KEY = Rails.application.secrets.secret_key_base


    def issue_token(user)
        case user
            when @student
                JWT.encode({student_id: @student.id}, KEY, 'HS256')
            when @parent
                JWT.encode({parent_id: @parent.id}, KEY, 'HS256')
            when @counselor
                JWT.encode({counselor_id: @counselor.id}, KEY, 'HS256')
        end
    end
  
    #########################################
    def current_student
      @student ||= Student.find_by(id: student_id)
    end

    def current_parent
        @parent ||= Parent.find_by(id: parent_id)
      end

    def current_parent
        @counselor ||= Counselor.find_by(id: parent_id)
    end

    ############################################
  
    def token
      request.headers['Authorization']
    end
  
    def decoded_token
      begin
        # [{user_id: 1}, {algo: 'hs256'}]
        JWT.decode(token, KEY, true, { :algorithm => 'HS256' })
      rescue JWT::DecodeError
        [{}]
      end
    end

    #######################################
  
    def student_id
      decoded_token.first['student_id']
    end

    def parent_id
        decoded_token.first['parent_id']
    end

    def counselor_id
        decoded_token.first['counselor_id']
    end

    ###########################################
  
    def logged_in?
      !!current_student || !!current_parent || !!current_counselor
    end

    ########################


  


end
