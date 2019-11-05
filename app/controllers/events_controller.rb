class EventsController < ApplicationController
  before_action :set_event, only: [:show, :edit, :update, :destroy]

  # GET /events
  # GET /events.json
  def index
    #events=Event.where(["eventDate LIKE ?","%#{params[:search]}%"])
    @events = Event.all.order(:eventDate)
  end

  # GET /events/1
  # GET /events/1.json
  def show
    @events = Event.all.order(:eventDate)
  end

  # GET /events/new
  def new
    @event = Event.new
  end

  # GET /events/1/edit
  def edit
    @cadets = Cadet.all.order(:lastName)
    @attendances = Attendance.all.order(:event)
    #@attendance = Attendance.find(params[:id])
  end

  # POST /events
  # POST /events.json
  def create
    @event = Event.new(event_params)
    
    respond_to do |format|
      if @event.save
        
        flash[:notice] = "New #{@event.primaryType} event on #{@event.eventDate} has been successfully created."
    
        format.html { redirect_to @event}
        format.json { render :show, status: :created, location: @event }
      else
        format.html { render :new }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
    
    @cadets = Cadet.all.order(:lastName)
    @cadets.each do |cadet|
      Attendance.create!(:attended => 'Present', :cadet_id => cadet.id, :event_id => @event.id)
    end
  end

  # PATCH/PUT /events/1
  # PATCH/PUT /events/1.json
  def update
    
    respond_to do |format|
      if @event.update(event_params)
        
        flash[:notice] = "Event on #{@event.eventDate} was successfully updated."
    
        format.html { redirect_to @event }
        format.json { render :show, status: :ok, location: @event }
      else
        format.html { render :edit }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /events/1
  # DELETE /events/1.json
  def destroy
    
    @event.attendances.destroy_all
    
    @event.destroy
    respond_to do |format|
      
      flash[:notice] = "#{@event.primaryType} event on #{@event.eventDate} has been deleted."
      format.html { redirect_to events_url}
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event
      @event = Event.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def event_params
      params.require(:event).permit(:eventDate, :primaryType, :subType, :details, attendances_attributes: [:id, :attended, :cadet_id, :event_id, :created_at, :updated_at])
    end
end
