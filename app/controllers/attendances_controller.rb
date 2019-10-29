class AttendancesController < ApplicationController
  
    def create
        @attendance = Attendace.new(attendance_params)
        #flash[:notice] = "Attendance successfully recorded for the #{@attendance.eventDate} event."
    end
    
    def destroy
      @attendance.destroy
      #flash[:notice] = "Attendance record successfully deleted."
    end
    
    def edit
      @attendance = Attendance.find(params[:id])
    end
    
    def update
      @attendance = Attendance.find(params[:id])
      
      respond_to do |format|
      if @attendance.update(attendance_params)
        format.html { redirect_to events_path(@attendance.event), notice: 'Attendance was successfully updated.' }
        format.json { render events_path(@attendance.event), status: :ok, location: @attendance }
      else
        format.html { render :edit }
        format.json { render json: @attendance.errors, status: :unprocessable_entity }
      end
    end
    end
    
  private
    def attendance_params
      params.require(:attendance).permit(:attended, :cadet_id, :event_id)
    end
end
