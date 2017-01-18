class UsersController < ApplicationController
  before_action :admin!

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.new(user_params)

    if @user.save
      redirect_to @user, notice: 'user was successfully created.'
    else
      render :new
    end
  end
end
