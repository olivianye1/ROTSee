class CadetMailer < ApplicationMailer
    def new_cadet_email
        @cadet = params[:cadet]
        mail(to: @cadet.email, subject: "Welcome to ROTSee!")
    end
    
    def new_cadet_admin
        @cadet = params[:cadet]
        mail(to: @cadet.email, subject: "New Cadet")
    end
    
    def forgot_password(cadet)
      @cadet = cadet
      mail to: cadet.email, :subject => 'Reset password instructions'
    end
    
    def absent_email
        @cadet = params[:cadet]
        @event = params[:event]
        mail(to: @cadet.email, subject: "Attendance Update")
    end
    
    def tardy_email
        @cadet = params[:cadet]
        @event = params[:event]
        mail(to: @cadet.email, subject: "Attendance Update")
    end
    
    def present_email
        @cadet = params[:cadet]
        @event = params[:event]
        mail(to: @cadet.email, subject: "Attendance Update")
    end
    
    def task_created_email
        @cadet = params[:cadet]
        @task = params[:task]
        mail to: @cadet.email, :subject => 'New Task Created'
    end
    
    def task_updated_email
        @cadet = params[:cadet]
        @task = params[:task]
        mail to: @cadet.email, :subject => 'Task Updated'
    end
end
