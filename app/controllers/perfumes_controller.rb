class PerfumesController < ApplicationController

  def index
    @perfumes = Perfume.all
  end

  def new
  @perfume = Perfume.new
end

  def create   
    @perfume = Perfume.new(perfume_params)
    @perfume.user = current_user if current_user.present?
    
    @perfume.question_code = [
       params[:perfume][:question1],
       params[:perfume][:question2],
       params[:perfume][:question3],
       params[:perfume][:question4],
       params[:perfume][:question5]
    ].join

    if @perfume.save
      redirect_to @perfume, notice: "診断が完了しました"
    else
      render :new, status: :unprocessable_entity
    end
end
  
  def show
    @perfume = Perfume.find(params[:id])
    @code = @perfume.code
  rescue ActiveRecord::RecordNotFound
    redirect_to perfumes_path, alert: "タイプが見つかりませんでした"
  end

  private
  def perfume_params
    params.require(:perfume).permit(:question1, :question2, :question3, :question4, :question5)
  end
end