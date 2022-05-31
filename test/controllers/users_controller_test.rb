require "test_helper"

class UsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:one)
  end

  test "should get index" do
    get users_url, as: :json
    assert_response :success
  end

  test "should create user" do
    assert_difference('User.count') do
      post users_url, params: { user: { achievements: @user.achievements, current_job: @user.current_job, email: @user.email, experience_details: @user.experience_details, experience_year: @user.experience_year, first_name: @user.first_name, language: @user.language, last_name: @user.last_name, password: @user.password, personal_description: @user.personal_description, phone_number: @user.phone_number, qualification_degree: @user.qualification_degree, qualification_level: @user.qualification_level, useful_links: @user.useful_links, user_type: @user.user_type } }, as: :json
    end

    assert_response 201
  end

  test "should show user" do
    get user_url(@user), as: :json
    assert_response :success
  end

  test "should update user" do
    patch user_url(@user), params: { user: { achievements: @user.achievements, current_job: @user.current_job, email: @user.email, experience_details: @user.experience_details, experience_year: @user.experience_year, first_name: @user.first_name, language: @user.language, last_name: @user.last_name, password: @user.password, personal_description: @user.personal_description, phone_number: @user.phone_number, qualification_degree: @user.qualification_degree, qualification_level: @user.qualification_level, useful_links: @user.useful_links, user_type: @user.user_type } }, as: :json
    assert_response 200
  end

  test "should destroy user" do
    assert_difference('User.count', -1) do
      delete user_url(@user), as: :json
    end

    assert_response 204
  end
end
