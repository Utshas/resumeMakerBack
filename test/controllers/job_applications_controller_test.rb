require "test_helper"

class JobApplicationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @job_application = job_applications(:one)
  end

  test "should get index" do
    get job_applications_url, as: :json
    assert_response :success
  end

  test "should create job_application" do
    assert_difference('JobApplication.count') do
      post job_applications_url, params: { job_application: { job_id: @job_application.job_id, user_id: @job_application.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show job_application" do
    get job_application_url(@job_application), as: :json
    assert_response :success
  end

  test "should update job_application" do
    patch job_application_url(@job_application), params: { job_application: { job_id: @job_application.job_id, user_id: @job_application.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy job_application" do
    assert_difference('JobApplication.count', -1) do
      delete job_application_url(@job_application), as: :json
    end

    assert_response 204
  end
end
