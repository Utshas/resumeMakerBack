class Users::ConfirmationsController < Devise::ConfirmationsController
  respond_to :json

  def show
    redirect_to "http://localhost:8080/?redirected=true"
  end
end