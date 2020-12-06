require 'test_helper'

class CcardsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ccard = ccards(:one)
  end

  test "should get index" do
    get ccards_url
    assert_response :success
  end

  test "should get new" do
    get new_ccard_url
    assert_response :success
  end

  test "should create ccard" do
    assert_difference('Ccard.count') do
      post ccards_url, params: { ccard: { card_issuer: @ccard.card_issuer, card_number: @ccard.card_number, customer_id: @ccard.customer_id, exp_date: @ccard.exp_date, name_on_card: @ccard.name_on_card } }
    end

    assert_redirected_to ccard_url(Ccard.last)
  end

  test "should show ccard" do
    get ccard_url(@ccard)
    assert_response :success
  end

  test "should get edit" do
    get edit_ccard_url(@ccard)
    assert_response :success
  end

  test "should update ccard" do
    patch ccard_url(@ccard), params: { ccard: { card_issuer: @ccard.card_issuer, card_number: @ccard.card_number, customer_id: @ccard.customer_id, exp_date: @ccard.exp_date, name_on_card: @ccard.name_on_card } }
    assert_redirected_to ccard_url(@ccard)
  end

  test "should destroy ccard" do
    assert_difference('Ccard.count', -1) do
      delete ccard_url(@ccard)
    end

    assert_redirected_to ccards_url
  end
end
