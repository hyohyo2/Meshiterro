class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @post_images = @user.post_images
  end

  def edit
    @user = User.find(params[:id])
  end

  # 投稿データのストロングパラメータ
  private

  def users
    params.require(:user).permit(:name)

  end
end
