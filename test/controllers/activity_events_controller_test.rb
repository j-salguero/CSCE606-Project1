require "test_helper"

class ActivityEventsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @activity_event = activity_events(:one)
  end

  test "should get index" do
    get activity_events_url
    assert_response :success
  end

  test "should get new" do
    get new_activity_event_url
    assert_response :success
  end

  test "should create activity_event" do
    assert_difference("ActivityEvent.count") do
      post activity_events_url, params: { activity_event: { activity_id: @activity_event.activity_id, created_at: @activity_event.created_at, due_date: @activity_event.due_date, is_completed: @activity_event.is_completed, updated_at: @activity_event.updated_at, user_id: @activity_event.user_id } }
    end

    assert_redirected_to activity_event_url(ActivityEvent.last)
  end

  test "should show activity_event" do
    get activity_event_url(@activity_event)
    assert_response :success
  end

  test "should get edit" do
    get edit_activity_event_url(@activity_event)
    assert_response :success
  end

  test "should update activity_event" do
    patch activity_event_url(@activity_event), params: { activity_event: { activity_id: @activity_event.activity_id, created_at: @activity_event.created_at, due_date: @activity_event.due_date, is_completed: @activity_event.is_completed, updated_at: @activity_event.updated_at, user_id: @activity_event.user_id } }
    assert_redirected_to activity_event_url(@activity_event)
  end

  test "should destroy activity_event" do
    assert_difference("ActivityEvent.count", -1) do
      delete activity_event_url(@activity_event)
    end

    assert_redirected_to activity_events_url
  end
end
