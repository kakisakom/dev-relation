class Admin::Base < ApplicationController
  private def current_administraror
    if session[:administrator_id]
      @current_administraror ||=
      Administrator.find_by(id: session[:administrator_id])
    end
  end

  helper_method :current_administraror
end