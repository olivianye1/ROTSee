class CadetsController < ApplicationController
  before_action :set_cadet, only: [:show, :edit, :update, :destroy]

  # GET /cadets
  # GET /cadets.json
  def index
    @cadets=Cadet.where(["lastName::text LIKE ?","%#{params[:search]}%"])
    #@cadets = Cadet.all.order(:lastName)
  end

  # GET /cadets/1
  # GET /cadets/1.json
  def show
     @cadets = Cadet.all.order(:lastName)
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

    respond_to do |format|
      if @cadet.save
        
        flash[:notice] = "#{@cadet.firstName} #{@cadet.lastName} has been successfully added to the ROTC roster."
    
        format.html { redirect_to @cadet}
        format.json { render :show, status: :created, location: @cadet }
      else
        format.html { render :new }
        format.json { render json: @cadet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cadets/1
  # PATCH/PUT /cadets/1.json
  def update
    respond_to do |format|
      if @cadet.update(cadet_params)
        
        flash[:notice] = "#{@cadet.firstName} #{@cadet.lastName}'s cadet profile has been successfully updated."
    
        format.html { redirect_to @cadet }
        format.json { render :show, status: :ok, location: @cadet }
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
