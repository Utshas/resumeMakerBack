class Users::RegistrationsController < Devise::RegistrationsController
  respond_to :json

  private
  def respond_with(resource, _opts = {})
    resource.persisted? ? register_success : register_failed(resource.errors)
  end
  def register_success
    render json: { message: "You need to confirm your account. Please check your email.", success: true }
  end
  def register_failed(errors)
    render json: { message: errors }
  end
end