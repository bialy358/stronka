class UsersController < ApplicationController
  def index
    @users=User.all
  end

  def update
    @users=User.all
    @user=User.find_by(params[:id])
    @user.aktywacja(@user.id)
    render 'index'
    end
  def show
  end

  end
