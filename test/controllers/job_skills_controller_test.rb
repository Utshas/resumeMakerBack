require "test_helper"

class JobSkillsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @job_skill = job_skills(:one)
  end

  test "should get index" do
    get job_skills_url, as: :json
    assert_response :success
  end

  test "should create job_skill" do
    assert_difference('JobSkill.count') do
      post job_skills_url, params: { job_skill: { job_id: @job_skill.job_id, skill_id: @job_skill.skill_id } }, as: :json
    end

    assert_response 201
  end

  test "should show job_skill" do
    get job_skill_url(@job_skill), as: :json
    assert_response :success
  end

  test "should update job_skill" do
    patch job_skill_url(@job_skill), params: { job_skill: { job_id: @job_skill.job_id, skill_id: @job_skill.skill_id } }, as: :json
    assert_response 200
  end

  test "should destroy job_skill" do
    assert_difference('JobSkill.count', -1) do
      delete job_skill_url(@job_skill), as: :json
    end

    assert_response 204
  end
end
