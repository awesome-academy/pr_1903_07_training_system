class HomeworksController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :find_lessons, only: [:show, :new, :edit]
  before_action :find_lesson, only: [:show, :edit, :update, :destroy]

  def new
    @homework = Homework.new
  end

  def create
    @homework = Homework.new homework_params
    if @homework.save
      flash[:success] = t(".homework_created")
      redirect_to homework_path(id: @homework.id, lesson_id: @homework.lesson.id)
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
    def homework_params
      params.require(:homework).permit :name, :lesson_id
    end

    def find_lessons
      @lessons = Lesson.all
    end

    def find_lesson
      @homework = Homework.find_by id: params[:id]
      @lesson = @homework.lesson
    end
end
