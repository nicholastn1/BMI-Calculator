require "test_helper"

class BmisTest < ActionDispatch::IntegrationTest
  setup do
    @bmi = bmis(:one)
  end

  test "should get index" do
    get bmis_url, as: :json
    assert_response :success
  end

  test "should create bmi" do
    assert_difference("Bmi.count") do
      post bmis_url, params: { bmi: { height: @bmi.height, weight: @bmi.weight } }, as: :json
    end

    assert_response :created
  end
end
