class UsersController < ApplicationController

  # GET /users
  def index
    @users = User.all

    render json: @users.as_json(include: :tasks)  
  end

  # GET /users/1
  def show
    render json: @user.as_json(include: :tasks)
  end

  # PATCH/PUT /users/1
  def update
    if @user.update(user_params)
      render json: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  private

    # Only allow a list of trusted parameters through.
    def user_params
      params.require(:user).permit(:password, :email)
    end
end
