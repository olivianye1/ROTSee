require "application_system_test_case"

class CadetsTest < ApplicationSystemTestCase
  setup do
    @cadet = cadets(:one)
  end

  test "visiting the index" do
    visit cadets_url
    assert_selector "h1", text: "Cadets"
  end

  test "creating a Cadet" do
    visit cadets_url
    click_on "New Cadet"

    fill_in "Cadetid", with: @cadet.cadetID
    fill_in "Course", with: @cadet.course
    fill_in "Email", with: @cadet.email
    fill_in "Firstname", with: @cadet.firstName
    fill_in "Flight", with: @cadet.flight
    fill_in "Gradyear", with: @cadet.gradYear
    fill_in "Lastname", with: @cadet.lastName
    fill_in "Password", with: @cadet.password
    fill_in "Phonenumber", with: @cadet.phoneNumber
    fill_in "Position", with: @cadet.position
    fill_in "School", with: @cadet.school
    fill_in "Username", with: @cadet.username
    click_on "Create Cadet"

    assert_text "Cadet was successfully created"
    click_on "Back"
  end

  test "updating a Cadet" do
    visit cadets_url
    click_on "Edit", match: :first

    fill_in "Cadetid", with: @cadet.cadetID
    fill_in "Course", with: @cadet.course
    fill_in "Email", with: @cadet.email
    fill_in "Firstname", with: @cadet.firstName
    fill_in "Flight", with: @cadet.flight
    fill_in "Gradyear", with: @cadet.gradYear
    fill_in "Lastname", with: @cadet.lastName
    fill_in "Password", with: @cadet.password
    fill_in "Phonenumber", with: @cadet.phoneNumber
    fill_in "Position", with: @cadet.position
    fill_in "School", with: @cadet.school
    fill_in "Username", with: @cadet.username
    click_on "Update Cadet"

    assert_text "Cadet was successfully updated"
    click_on "Back"
  end

  test "destroying a Cadet" do
    visit cadets_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cadet was successfully destroyed"
  end
end
