class PasswordResetsController < ApplicationController
    skip_before_action :authorized, only: [:new, :create, :edit, :update]

  def new
  end

  def create
    cadet = Cadet.find_by_username(params[:username])
    cadet.send_password_reset if cadet
    redirect_to '/', success: "E-mail sent with password reset instructions."
  end

  def edit
    @cadet = Cadet.find_by_password_reset_token(params[:id])
  end

  def update
    @cadet = Cadet.find_by_password_reset_token(params[:id])
    if @cadet.password_reset_sent_at < 2.hour.ago
      redirect_to new_password_reset_path, danger: "Password reset has expired."
    elsif @cadet.update(cadet_params)
      redirect_to '/', success: "Password has been reset!"
    else
      render :edit
    end
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def cadet_params
      params.require(:cadet).permit(:password)
    end
end