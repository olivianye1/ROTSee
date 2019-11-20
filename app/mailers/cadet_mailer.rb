class CadetMailer < ApplicationMailer
    def new_cadet_email
        @cadet = params[:cadet]

        mail(to: @cadet.email, subject: "Welcome to ROTSee!")
    end
end
