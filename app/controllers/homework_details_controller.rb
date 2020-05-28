class HomeworkDetailsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :find_homeworks, only: [:create]
  before_action :find_homework_detail, only: [:show, :edit, :update]

  def new
    @homework_detail = current_user.homework_details.build
    @homework_id = params[:homework_id]
  end

  def create
    @homework_detail = current_user.homework_details.build homework_detail_params

    if @homework_detail.save
      flash[:success] = t(".homework_detail_created")
      redirect_to @homework_detail.homework
    else
      render :new
    end
  end

  def show; end

  def edit; end

  def update
  end

  def destroy
  end

  private
    def find_homework_detail
      @homework_detail = HomeworkDetail.find_by(id: params[:id])
      unless @homework_detail
      flash[:danger] = "home work detail not found"
      redirect_to new_homework_detail_path(homework_id: @homework.id)
      end
    end

    def homework_detail_params
      params.require(:homework_detail).permit :content, :homework_id
    end

    def find_homeworks
      @homeworks = Homework.all
    end
end
