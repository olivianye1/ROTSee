class AttendancesController < ApplicationController
  before_action :set_attendance, only: [:edit, :update, :destroy, :send_email]

    def create
      @attendance = Attendace.new(attendance_params)
    end
    
    def destroy
      @attendance.destroy
    end
    
    def edit
    end
    
    def update
        @attendance.update(attendance_params)
    end
    
  private
  
    def set_attendance
      @attendance = Attendance.find(params[:id])
    end
  
    def attendance_params
     params.require(:attendance).permit(:attended, :cadet_id, :event_id)
    end
end
