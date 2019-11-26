class CadetsController < ApplicationController
  before_action :set_cadet, only: [:show, :edit, :update, :destroy]
  skip_before_action :authorized, only: [:new, :create]

  # GET /cadets
  # GET /cadets.json
  def index
    if params[:term]
      @cadets = Cadet.search_by_full_name(params[:term])
      if params[:term] == ''
        @cadets = Cadet.all.order(:lastName)
      end
    else
      @cadets = Cadet.all.order(:lastName)
    end
  end

  # GET /cadets/1
  # GET /cadets/1.json
  def show
     @cadets = Cadet.all.order(:lastName)
     @ord_attendance = @cadet.attendances
     
     @total_records = 0
     @total_LLAB = 0
     @total_PT = 0
     @pres_total = 0
     @pres_LLAB = 0
     @pres_PT = 0
     
     @LLAB_percent = 0
     @PT_percent = 0
     @total_percent = 0

    @ord_attendance.each do |attendance|
      @total_records += 1
      if attendance.event.primaryType == "LLAB"
        @total_LLAB += 1
        if attendance.attended == "Present"
          @pres_LLAB += 1
        end
      elsif attendance.event.primaryType == "PT"
        @total_PT += 1
        if attendance.attended == "Present"
          @pres_PT += 1
        end
      else
      end
    end
    @pres_total = @pres_LLAB + @pres_PT
    
    @LLAB_percent = @pres_LLAB.to_f/@total_LLAB.to_f * 100.00
    @PT_percent = @pres_PT.to_f/@total_PT.to_f * 100.00
    @total_percent = @pres_total.to_f/@total_records.to_f * 100.00
    
    
  end

  # GET /cadets/new
  def new
    @cadet = Cadet.new
  end

  # GET /cadets/1/edit
  def edit
  end

  # POST /cadets
  # POST /cadets.json
  def create
    @cadet = Cadet.new(cadet_params)
    
      if @cadet.save
        redirect_to @cadet, success: "#{@cadet.firstName} #{@cadet.lastName} has been successfully added to the ROTC roster!"
        session[:cadet_id] = @cadet.id
      else
        redirect_to '/cadets/new', danger: "Cadet was not added."
        session[:cadet_id] = @cadet.id
      end
  end

  # PATCH/PUT /cadets/1
  # PATCH/PUT /cadets/1.json
  def update
      if @cadet.update(cadet_params)
        redirect_to @cadet, success: "Cadet was successfully updated."
      else
        redirect_to edit_cadet_path(@cadet), danger: "Cadet was not updated."
      end
  end

  # DELETE /cadets/1
  # DELETE /cadets/1.json
  def destroy
    @cadet.attendances.destroy_all
    
    @cadet.destroy
    redirect_to cadets_url, info: "Cadet successfully removed from the ROTC roster."
  end

  
  def roster
    @cadets = Cadet.all.order(:lastName)
    respond_to do |format|
      format.html
      format.pdf do
        render :pdf => 'roster',
        :template => 'cadets/index.pdf.erb',
        :layout => 'roster.html.erb'
        #:layout => 'cadets/index.pdf.erb'
       # disposition: 'inline',
        #stream: false,
        #layout: 'layouts/pdf.html.erb'
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cadet
      @cadet = Cadet.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cadet_params
      params.require(:cadet).permit(:lastName, :firstName, :email, :phoneNumber, :school, :position, :course, :gradYear, :flight, :username, :password, :password_confirmation)
    end
end
