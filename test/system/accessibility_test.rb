require "application_system_test_case"

class AccessibilityTest < ApplicationSystemTestCase
  # Home & Browse

  test "home page is accessible" do
    visit root_url
    assert_accessible
  end

  test "browse page is accessible" do
    visit browse_index_url
    assert_accessible
  end

  # Talks

  test "talks index is accessible" do
    visit talks_url
    assert_accessible
  end

  test "talk detail is accessible" do
    visit talk_url(talks(:one))
    assert_accessible
  end

  test "talk with sections is accessible" do
    visit talk_url(talks(:meta_talk))
    assert_accessible
  end

  # Events

  test "events index is accessible" do
    visit events_url
    assert_accessible
  end

  test "event detail is accessible" do
    visit event_url(events(:rails_world_2023))
    assert_accessible
  end

  test "past events page is accessible" do
    visit past_events_url
    assert_accessible
  end

  # Speakers & Profiles

  test "speakers index is accessible" do
    visit speakers_url
    assert_accessible
  end

  test "profile detail is accessible" do
    visit profile_url(users(:marco))
    assert_accessible
  end

  # Organizations

  test "organizations index is accessible" do
    visit organizations_url
    assert_accessible
  end

  test "organization detail is accessible" do
    visit organization_url(organizations(:one))
    assert_accessible
  end

  # Topics

  test "topics index is accessible" do
    visit topics_url
    assert_accessible
  end

  test "topic detail is accessible" do
    visit topic_url(topics(:one))
    assert_accessible
  end

  # Announcements

  test "announcements index is accessible" do
    visit announcements_url
    assert_accessible
  end

  # CFP

  test "cfp index is accessible" do
    visit cfp_index_url
    assert_accessible
  end

  # Locations

  test "continents index is accessible" do
    visit continents_url
    assert_accessible
  end

  test "countries index is accessible" do
    visit countries_url
    assert_accessible
  end

  # Authentication

  test "sign in page is accessible" do
    visit new_session_url
    assert_accessible
  end

  # Static pages

  test "about page is accessible" do
    visit about_url
    assert_accessible
  end

  test "uses page is accessible" do
    visit uses_url
    assert_accessible
  end

  test "privacy page is accessible" do
    visit privacy_url
    assert_accessible
  end
end
