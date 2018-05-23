class Users::SessionsController < Devise::SessionsController

  # GET /resource/sign_in
  def new
    super
  end


  # DELETE /resource/sign_out
  def destroy
    super
    flash[:alert] = "さようなら"
  end
end