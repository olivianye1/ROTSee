class CadetMailer < ApplicationMailer
    def new_cadet_email
        @cadet = params[:cadet]

        mail(to: @cadet.email, subject: "Welcome to ROTSee!")
    end
    
    def new_cadet_admin
        @cadet = params[:cadet]
        mail(to: @cadet.email, subject: "New Cadet")
    end
end
