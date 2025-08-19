class UsersController < ApplicationController
    def show
  @user = User.find_by(id: params[:id])
  if @user.nil?
    redirect_to root_path, alert: "ユーザーが見つかりませんでした"
    return
  end
  @perfume = @user.perfumes.find_by(completed: true)
end
end
