class ApplicationController < ActionController::Base

  protect_from_forgery with: :exception



  def json_request?
    request.format.json?
  end
end
