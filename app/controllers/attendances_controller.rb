class AttendancesController < ApplicationController
  before_action :set_attendance, only: [:edit, :update, :destroy]
  
    def create
      @attendance = Attendace.new(attendance_params)
    end
    
    def destroy
      @attendance.destroy
    end
    
    def edit
    end
    
    def update
        if @attendance.update(attendance_params)
          format.html { redirect_to edit_event_path(@attendance.event), notice: 'Attendance was successfully updated.' }
          format.json { render edit_event_path(@attendance.event), status: :ok, location: @attendance }
        else
          format.html { render :edit }
          format.json { render json: @attendance.errors, status: :unprocessable_entity }
        end
    end
    
  private
  
    def set_attendance
      @attendance = Attendance.find(params[:id])
    end
  
    def attendance_params
     params.require(:attendance).permit(:attended, :cadet_id, :event_id)
    end
end
