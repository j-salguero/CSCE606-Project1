require "application_system_test_case"

class ActivityEventsTest < ApplicationSystemTestCase
  setup do
    @activity_event = activity_events(:one)
  end

  test "visiting the index" do
    visit activity_events_url
    assert_selector "h1", text: "Activity events"
  end

  test "should create activity event" do
    visit activity_events_url
    click_on "New activity event"

    fill_in "Activity", with: @activity_event.activity_id
    fill_in "Created at", with: @activity_event.created_at
    fill_in "Due date", with: @activity_event.due_date
    fill_in "Is completed", with: @activity_event.is_completed
    fill_in "Updated at", with: @activity_event.updated_at
    fill_in "User", with: @activity_event.user_id
    click_on "Create Activity event"

    assert_text "Activity event was successfully created"
    click_on "Back"
  end

  test "should update Activity event" do
    visit activity_event_url(@activity_event)
    click_on "Edit this activity event", match: :first

    fill_in "Activity", with: @activity_event.activity_id
    fill_in "Created at", with: @activity_event.created_at
    fill_in "Due date", with: @activity_event.due_date
    fill_in "Is completed", with: @activity_event.is_completed
    fill_in "Updated at", with: @activity_event.updated_at
    fill_in "User", with: @activity_event.user_id
    click_on "Update Activity event"

    assert_text "Activity event was successfully updated"
    click_on "Back"
  end

  test "should destroy Activity event" do
    visit activity_event_url(@activity_event)
    click_on "Destroy this activity event", match: :first

    assert_text "Activity event was successfully destroyed"
  end
end
