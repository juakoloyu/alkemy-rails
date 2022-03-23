require "test_helper"

class MooviesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @moovy = moovies(:one)
  end

  test "should get index" do
    get moovies_url, as: :json
    assert_response :success
  end

  test "should create moovy" do
    assert_difference("Moovie.count") do
      post moovies_url, params: { moovy: { image: @moovy.image, score: @moovy.score, title: @moovy.title } }, as: :json
    end

    assert_response :created
  end

  test "should show moovy" do
    get moovy_url(@moovy), as: :json
    assert_response :success
  end

  test "should update moovy" do
    patch moovy_url(@moovy), params: { moovy: { image: @moovy.image, score: @moovy.score, title: @moovy.title } }, as: :json
    assert_response :success
  end

  test "should destroy moovy" do
    assert_difference("Moovie.count", -1) do
      delete moovy_url(@moovy), as: :json
    end

    assert_response :no_content
  end
end
