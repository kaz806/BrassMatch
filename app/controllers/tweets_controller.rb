class TweetsController < ApplicationController
  def index
    @tweets = Tweet.all
  end

  def show
    @tweet = Tweet.find(params[:id])
    @user = @tweet.user
  end

  def new
    @tweet = Tweet.new
  end

  def create
    @tweet = Tweet.new(tweet_params)
    @tweet.user = current_user
    if @tweet.save
    redirect_to tweet_path(@tweet), notice: "投稿が完了しました"
    else
    flash.now[:alert] = "投稿に失敗しました"
    render :new, status: :unprocessable_entity
    end
  end

  def edit
  @tweet = Tweet.find(params[:id])
  end

  def update
     @tweet = Tweet.find(params[:id])
     if @tweet.update(tweet_params)
     redirect_to tweet_path(@tweet), notice: "更新が完了しました"
     else
     flash.now[:alert] = "更新に失敗しました"
     render :edit, status: :unprocessable_entity
     end
  end

  private

  def tweet_params
    params.require(:tweet).permit(:music, :detail)  
  end
end

