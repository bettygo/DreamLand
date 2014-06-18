class UsersController < ApplicationController

  def index
    @users=User.all
  end

  def new


  end

  def create

  end

  def edit

  end

  def change
  end

  def show
    @user = User.find(1)
  end


  def new_user


    @user=User.new
    @user.name=params[:name]
    @user.email=params[:email].downcase
    @user.password_digest=params[:password]

    @user.sex=params[:sex]
    if @user.save
      flash[:notice]="Successfully sign in. Welcome new  dreamlander!"

    else
      flash[:notice]="the email has been registered!"
      redirect_to :action => :new
    end





  end


end
