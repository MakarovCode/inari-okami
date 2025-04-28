class ApiController < ActionController::Base

  def auth
    @current_user = AdminUser.find_by_uuid_and_token parmas[:uuid], parmas[:token]
  end

  def auth_and_block
    auth
    return render status: 422, json: { message: "Unauthorized" } if block && @current_user.nil?
  end

end
