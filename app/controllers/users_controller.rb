class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_user
  def show
    @thing = Thing.new
    @thing.user_id = @user.id
  end

  def map
  end

  def set_user
    @user = current_user
  end
end
