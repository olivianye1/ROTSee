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
        
        flash[:notice] = "#{@cadet.firstName} #{@cadet.lastName} has been successfully added to the ROTC roster."
    
        session[:cadet_id] = @cadet.id
        
        redirect_to '/welcome'
        
      else
        session[:cadet_id] = @cadet.id
        redirect_to '/welcome'
      end
  end

  # PATCH/PUT /cadets/1
  # PATCH/PUT /cadets/1.json
  def update
    respond_to do |format|
      if @cadet.update(cadet_params)
        
        #flash[:notice] = "#{@cadet.firstName} #{@cadet.lastName}'s cadet profile has been successfully updated."
    
        #format.html { redirect_to @cadet }
        #format.json { render :show, status: :ok, location: @cadet }
        
        format.html { redirect_to @cadet, notice: 'Cadet was successfully updated.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @cadet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cadets/1
  # DELETE /cadets/1.json
  def destroy
    @cadet.attendances.destroy_all
    
    @cadet.destroy
    respond_to do |format|
      flash[:notice] = "#{@cadet.firstName} #{@cadet.lastName} was successfully removed from the ROTC roster."
      format.html { redirect_to cadets_url}
      format.json { head :no_content }
      
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cadet
      @cadet = Cadet.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cadet_params
      params.require(:cadet).permit(:lastName, :firstName, :email, :phoneNumber, :school, :position, :course, :gradYear, :flight, :username, :password)
    end
end
