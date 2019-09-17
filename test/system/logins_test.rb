require "application_system_test_case"

class LoginsTest < ApplicationSystemTestCase
  setup do
    @login = logins(:one)
  end

  test "visiting the index" do
    visit logins_url
    assert_selector "h1", text: "Logins"
  end

  test "creating a Login" do
    visit logins_url
    click_on "New Login"

    fill_in "Callid", with: @login.CallID
    fill_in "Ch notification", with: @login.Ch_notification
    fill_in "Icon", with: @login.Icon
    fill_in "Password", with: @login.Password
    fill_in "Peerid", with: @login.PeerID
    fill_in "Userid", with: @login.UserID
    fill_in "Username", with: @login.UserName
    click_on "Create Login"

    assert_text "Login was successfully created"
    click_on "Back"
  end

  test "updating a Login" do
    visit logins_url
    click_on "Edit", match: :first

    fill_in "Callid", with: @login.CallID
    fill_in "Ch notification", with: @login.Ch_notification
    fill_in "Icon", with: @login.Icon
    fill_in "Password", with: @login.Password
    fill_in "Peerid", with: @login.PeerID
    fill_in "Userid", with: @login.UserID
    fill_in "Username", with: @login.UserName
    click_on "Update Login"

    assert_text "Login was successfully updated"
    click_on "Back"
  end

  test "destroying a Login" do
    visit logins_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Login was successfully destroyed"
  end
end
