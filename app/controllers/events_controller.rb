class EventsController < ApplicationController
  before_action :set_event, only: [:show, :edit, :update, :destroy]
  
  # GET /events
  # GET /events.json
  def index
    if params[:term]
      @events = Event.search_by_date(params[:term])
      if params[:term] == ''
        @events = Event.all.order(:eventDate)
      end
    else
      @events = Event.all.order(eventDate: :desc).page(params[:page]).per_page(15)
     
    end
  end

  # GET /events/1
  # GET /events/1.json
  def show
    @cadets = Cadet.all.order(:lastName)
  end

  # GET /events/new
  def new
    @event = Event.new
  end

  # GET /events/1/edit
  def edit
    @cadets = Cadet.all.order(:lastName)
    @attendances = Attendance.all.order(:event)
    @attendance_options = {'Absent' => 0, 'Present' => 1, 'Tardy' => 2}
  end

  # POST /events
  # POST /events.json
  def create
    @event = Event.new(event_params)
    
    if @event.save
      redirect_to @event, success: "New #{@event.primaryType} event on #{@event.eventDate} has been successfully created."
    else
      redirect_to '/events/new', danger: "Event not created."
    end
    
    @cadets = Cadet.where(approved: true).order(:lastName)
    @cadets.each do |cadet|
      Attendance.create!(:attended => 1, :cadet_id => cadet.id, :event_id => @event.id)
    end
  end

  # PATCH/PUT /events/1
  # PATCH/PUT /events/1.json
  def update

    if @event.update(event_params)
      redirect_to @event, success: "Event was successfully updated."
      @event.attendances.each do |attendance|
        @cadet = Cadet.find_by_id(attendance.cadet_id)
        if attendance.attended == 0
          CadetMailer.with(cadet: @cadet, event: @event).absent_email.deliver_later
        elsif attendance.attended == 2
          CadetMailer.with(cadet: @cadet, event: @event).tardy_email.deliver_later
        else
          CadetMailer.with(cadet: @cadet, event: @event).present_email.deliver_later
        end
      end
    else
      redirect_to edit_event_path(@event), danger: "Event was not updated."
    end
  end

  # DELETE /events/1
  # DELETE /events/1.json
  def destroy
    
    @event.attendances.destroy_all
    
    @event.destroy
    redirect_to events_url, info: "Event successfully deleted."
  end
  
  def calendar
    @events = Event.all
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
