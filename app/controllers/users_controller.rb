class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    # debugger
  end
  
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(user_params)
    if @user.save
      log_in @user
      flash[:success] = "ユーザー登録に成功しました！"
      redirect_to @user
    else
      flash[:danger] = "入力内容が正しくありません。"
      render "new"
    end
  end

  private

    def user_params
      params.require(:user).permit(:name, :email, :password,
                                   :password_confirmation)
    end
end
