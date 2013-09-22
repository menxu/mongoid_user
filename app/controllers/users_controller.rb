class UsersController < ApplicationController
  def index
    p User.mongodb_user
    @user = User.mongodb_user.to_s
  end
end