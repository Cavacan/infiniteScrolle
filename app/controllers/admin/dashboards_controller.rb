class Admin::DashboardsController < ApplicationController
  layout "admin"
  def index
    @users = User.all
    @guests = Guest.all
  end
end
