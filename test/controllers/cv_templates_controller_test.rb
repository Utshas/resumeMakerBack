require "test_helper"

class CvTemplatesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cv_template = cv_templates(:one)
  end

  test "should get index" do
    get cv_templates_url, as: :json
    assert_response :success
  end

  test "should create cv_template" do
    assert_difference('CvTemplate.count') do
      post cv_templates_url, params: { cv_template: { link: @cv_template.link, published: @cv_template.published, user_id: @cv_template.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show cv_template" do
    get cv_template_url(@cv_template), as: :json
    assert_response :success
  end

  test "should update cv_template" do
    patch cv_template_url(@cv_template), params: { cv_template: { link: @cv_template.link, published: @cv_template.published, user_id: @cv_template.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy cv_template" do
    assert_difference('CvTemplate.count', -1) do
      delete cv_template_url(@cv_template), as: :json
    end

    assert_response 204
  end
end
