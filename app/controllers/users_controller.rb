class UsersController < ApplicationController
  def show
    @user  = User.find(params[:id])
    @blogs = Blog.all
  end
  def settings
    @users = User.all
  end
  def edit
    
  end
  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'user was successfully updated.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    def user_params
      params.require(:user).permit(:name,:mail)
    end
end