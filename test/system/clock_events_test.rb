require "application_system_test_case"

class ClockEventsTest < ApplicationSystemTestCase
  setup do
    @clock_event = clock_events(:one)
  end

  test "visiting the index" do
    visit clock_events_url
    assert_selector "h1", text: "Clock Events"
  end

  test "creating a Clock event" do
    visit clock_events_url
    click_on "New Clock Event"

    fill_in "Clock event type", with: @clock_event.clock_event_type_id
    fill_in "User", with: @clock_event.user_id
    click_on "Create Clock event"

    assert_text "Clock event was successfully created"
    click_on "Back"
  end

  test "updating a Clock event" do
    visit clock_events_url
    click_on "Edit", match: :first

    fill_in "Clock event type", with: @clock_event.clock_event_type_id
    fill_in "User", with: @clock_event.user_id
    click_on "Update Clock event"

    assert_text "Clock event was successfully updated"
    click_on "Back"
  end

  test "destroying a Clock event" do
    visit clock_events_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Clock event was successfully destroyed"
  end
end
