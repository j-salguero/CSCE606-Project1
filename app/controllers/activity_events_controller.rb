class ActivityEventsController < ApplicationController
  before_action :set_activity_event, only: %i[ show edit update destroy ]

  # GET /activity_events or /activity_events.json
  def index
    @activity_events = ActivityEvent.all
  end

  # GET /activity_events/1 or /activity_events/1.json
  def show
  end

  # GET /activity_events/new
  def new
    @activity_event = ActivityEvent.new
  end

  # GET /activity_events/1/edit
  def edit
  end

  # POST /activity_events or /activity_events.json
  def create
    @activity_event = ActivityEvent.new(activity_event_params)

    respond_to do |format|
      if @activity_event.save
        format.html { redirect_to @activity_event, notice: "Activity event was successfully created." }
        format.json { render :show, status: :created, location: @activity_event }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @activity_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /activity_events/1 or /activity_events/1.json
  def update
    respond_to do |format|
      if @activity_event.update(activity_event_params)
        format.html { redirect_to @activity_event, notice: "Activity event was successfully updated.", status: :see_other }
        format.json { render :show, status: :ok, location: @activity_event }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @activity_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /activity_events/1 or /activity_events/1.json
  def destroy
    @activity_event.destroy!

    respond_to do |format|
      format.html { redirect_to activity_events_path, notice: "Activity event was successfully destroyed.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_activity_event
      @activity_event = ActivityEvent.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def activity_event_params
      params.expect(activity_event: [ :due_date, :is_completed, :created_at, :updated_at, :user_id, :activity_id ])
    end
end
