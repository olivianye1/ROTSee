# Preview all emails at http://localhost:3000/rails/mailers/cadet_mailer
class CadetMailerPreview < ActionMailer::Preview
    def new_cadet_email
        # Set up a temporary order for the preview
        @cadet = Cadet.first

        CadetMailer.with(cadet: @cadet).new_cadet_email
    end
end
