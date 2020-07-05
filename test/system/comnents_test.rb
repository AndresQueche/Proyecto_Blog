require "application_system_test_case"

class ComnentsTest < ApplicationSystemTestCase
  setup do
    @comnent = comnents(:one)
  end

  test "visiting the index" do
    visit comnents_url
    assert_selector "h1", text: "Comnents"
  end

  test "creating a Comnent" do
    visit comnents_url
    click_on "New Comnent"

    fill_in "Body", with: @comnent.body
    fill_in "Post", with: @comnent.post_id
    click_on "Create Comnent"

    assert_text "Comnent was successfully created"
    click_on "Back"
  end

  test "updating a Comnent" do
    visit comnents_url
    click_on "Edit", match: :first

    fill_in "Body", with: @comnent.body
    fill_in "Post", with: @comnent.post_id
    click_on "Update Comnent"

    assert_text "Comnent was successfully updated"
    click_on "Back"
  end

  test "destroying a Comnent" do
    visit comnents_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Comnent was successfully destroyed"
  end
end
