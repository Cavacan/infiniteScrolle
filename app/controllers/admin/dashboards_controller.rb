class Admin::DashboardsController < ApplicationController
  layout "admin"
  def index
    @q_users = User.ransack(params[:q_users])
    @users = @q_users.result.page(params[:page_users])
    @q_guests = Guest.ransack(params[:q_guests])
    @guests = @q_guests.result.page(params[:page_guests])
  end
end
