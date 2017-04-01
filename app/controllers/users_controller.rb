class UsersController < ApplicationController
  def new
  	@user = User.new
  end

  def create
  	@user = User.new(user_params)

  	if @user.save
      redirect_to @user
    else
    	render :new
    end
  end

  def show
  	@user = User.find(params[:id])
    @upcoming_events = current_user.upcoming_events
    @prev_events = current_user.previous_events
  end

  private

  	def user_params
  		params.require(:user).permit(:name)
    end
end
