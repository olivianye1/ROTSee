class AttendancesController < ApplicationController
    def create
        @attendance = Attendace.new(attendance_params)
        
        flash[:notice] = "Attendance successfully recorded for the #{@attendance.eventDate} event."
    
    end
    
    def destroy
      #@article = Article.find(params[:article_id])
      #@comment = @article.comments.find(params[:id])
      @attendance.destroy
      
      flash[:notice] = "Attendance record successfully deleted."
    end
    
    def edit
      
    end
 
  private
    def attendance_params
      params.require(:attendance).permit(:attended, :cadet_id, :event_id)
    end
end
