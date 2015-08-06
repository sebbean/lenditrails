module Admin
  class BaseController < ApplicationController
    respond_to :html
    before_filter :require_login

    private
    def not_authenticated
      redirect_to login_path, alert: "Please login first"
    end
  end
end