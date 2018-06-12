class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  rescue_from ActiveRecord::RecordNotFound, with: :record_not_found

  def index
  end

  private
  def record_not_found
    flash[:alert] = 'That record was not found in our system'
    redirect_to(request.referrer || root_path)
  end

end
