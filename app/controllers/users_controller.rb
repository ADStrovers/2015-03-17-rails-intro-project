class UsersController < ApplicationController
  def index
    @all_users = User.all
  end
  
  def new
    # Form for creaitng a new user.
  end
  
  def create
    # Takes in params from new and creates a new User
    @user = User.create(
      username: params[:username], 
      password: BCrypt::Password.create(params[:password])
    )
    redirect_to controller: 'users', action: 'index'
  end
  
  def show
    @user = User.find(params[:id])
  end
  
  def edit
    @user = User.find(params[:id])
  end
  
  def update
    @user = User.find(params[:id])
    @user.username = params[:username]
    @user.save
    redirect_to "/users/#{params[:id]}"
  end
  
  def delete
    User.delete(params[:id])
    redirect_to '/users'
  end
end
