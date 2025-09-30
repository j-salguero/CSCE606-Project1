class ActivityEventsController < ApplicationController
  before_action :set_activity_event, only: %i[ show edit update destroy ]

  # GET /activity_events or /activity_events.json
  def index
    # Get the current date
    today = Date.current

    # Calculate the date of the Monday of the current week
    # Date.current.beginning_of_week defaults to Monday as the start of the week.
    this_monday = today.beginning_of_week

    @activity_events_Mon_TD = ActivityEvent.select{ |event| event.is_completed == false && event.due_date == this_monday }
    @activity_events_Tue_TD = ActivityEvent.select{ |event| event.is_completed == false && event.due_date == this_monday + 1.day }
    @activity_events_Wed_TD = ActivityEvent.select{ |event| event.is_completed == false && event.due_date == this_monday + 2.day }
    @activity_events_Thr_TD = ActivityEvent.select{ |event| event.is_completed == false && event.due_date == this_monday + 3.day }
    @activity_events_Fri_TD = ActivityEvent.select{ |event| event.is_completed == false && event.due_date == this_monday + 4.day }
    @activity_events_Sat_TD = ActivityEvent.select{ |event| event.is_completed == false && event.due_date == this_monday + 5.day }
    @activity_events_Sun_TD = ActivityEvent.select{ |event| event.is_completed == false && event.due_date == this_monday + 6.day }

    @activity_events_Mon_Dn = ActivityEvent.select{ |event| event.is_completed == true && event.due_date == this_monday }
    @activity_events_Tue_Dn = ActivityEvent.select{ |event| event.is_completed == true && event.due_date == this_monday + 1.day }
    @activity_events_Wed_Dn = ActivityEvent.select{ |event| event.is_completed == true && event.due_date == this_monday + 2.day }
    @activity_events_Thr_Dn = ActivityEvent.select{ |event| event.is_completed == true && event.due_date == this_monday + 3.day }
    @activity_events_Fri_Dn = ActivityEvent.select{ |event| event.is_completed == true && event.due_date == this_monday + 4.day }
    @activity_events_Sat_Dn = ActivityEvent.select{ |event| event.is_completed == true && event.due_date == this_monday + 5.day }
    @activity_events_Sun_Dn = ActivityEvent.select{ |event| event.is_completed == true && event.due_date == this_monday + 6.day }
  end

  # GET /activity_events/1 or /activity_events/1.json
  def show
    @activity = Activity.find{ |activity| activity.id == @activity_event.activity_id }
    @activity_name = @activity.ActivityName
    @user= User.find{ |user| user.id == @activity_event.user_id }
    @user_name = @user.name
  end

  # GET /activity_events/new
  def new
    @activity_event = ActivityEvent.new
    @users_for_dropdown = User.all.map { |user| [user.name, user.id] } # Or any other desired attributes
    @activities_for_dropdown = Activity.all.map { |activity| [activity.ActivityName, activity.id] } # Or any other desired attributes
  end

  # GET /activity_events/1/edit
  def edit
    @users_for_dropdown = User.all.map { |user| [user.name, user.id] } # Or any other desired attributes
    @activities_for_dropdown = Activity.all.map { |activity| [activity.ActivityName, activity.id] } # Or any other desired attributes
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
