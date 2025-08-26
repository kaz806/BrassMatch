class UsersController < ApplicationController
  def show
  @user = User.find_by(id: params[:id])
  @tweets = @user.tweets.order(created_at: :desc)
  if @user.nil?
    redirect_to root_path, alert: "ユーザーが見つかりませんでした"
    return
  end
  @perfumes = @user.perfumes.where(completed: true).order(created_at: :desc)
  end
end
