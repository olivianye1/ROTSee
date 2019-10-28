class AttendancesController < ApplicationController
    def create
        @attendance = Attendace.new(attendance_params)
    end
    
    def destroy
      #@article = Article.find(params[:article_id])
      #@comment = @article.comments.find(params[:id])
      @attendance.destroy
    end
    
    def edit
      
    end
 
  private
    def attendance_params
      params.require(:attendance).permit(:attended, :cadet_id, :event_id)
    end
end
