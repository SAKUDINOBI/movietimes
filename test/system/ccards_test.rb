require "application_system_test_case"

class CcardsTest < ApplicationSystemTestCase
  setup do
    @ccard = ccards(:one)
  end

  test "visiting the index" do
    visit ccards_url
    assert_selector "h1", text: "Ccards"
  end

  test "creating a Ccard" do
    visit ccards_url
    click_on "New Ccard"

    fill_in "Card issuer", with: @ccard.card_issuer
    fill_in "Card number", with: @ccard.card_number
    fill_in "Customer", with: @ccard.customer_id
    fill_in "Exp date", with: @ccard.exp_date
    fill_in "Name on card", with: @ccard.name_on_card
    click_on "Create Ccard"

    assert_text "Ccard was successfully created"
    click_on "Back"
  end

  test "updating a Ccard" do
    visit ccards_url
    click_on "Edit", match: :first

    fill_in "Card issuer", with: @ccard.card_issuer
    fill_in "Card number", with: @ccard.card_number
    fill_in "Customer", with: @ccard.customer_id
    fill_in "Exp date", with: @ccard.exp_date
    fill_in "Name on card", with: @ccard.name_on_card
    click_on "Update Ccard"

    assert_text "Ccard was successfully updated"
    click_on "Back"
  end

  test "destroying a Ccard" do
    visit ccards_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Ccard was successfully destroyed"
  end
end
