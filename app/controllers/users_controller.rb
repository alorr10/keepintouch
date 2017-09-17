class UsersController < ApplicationController
  before_action :authenticate_user!

  def show
    @user = current_user
    @contact = @user.contacts
  end
end
