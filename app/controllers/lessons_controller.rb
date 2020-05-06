class LessonsController < ApplicationController 
  before_action :authenticate_user!, except: [:index, :show]
  before_action :find_courses, only: [:show, :new, :edit, :create]
  before_action :find_course, only: [:show, :edit, :update, :destroy]

  def new
    @lesson = current_user.lessons.build
  end

  def create 
    @lesson = current_user.lessons.build lesson_params 
    @lesson.user_id = current_user.id if user_signed_in?

    if @lesson.save 
      flash[:success] = t(".lesson_created")
      redirect_to lesson_path(id: @lesson.id, course_id: @lesson.course.id)
    else
      render :new 
    end
  end

  def show
    @lessons = Lesson.all
  end

  def edit; end 
  
  def update
    if @lesson.update lesson_params 
      flash[:success] = t(".lesson_updated")
      redirect_to lesson_path(id: @lesson.id, course_id: @lesson.course.id) 
    else
      render :edit 
    end
  end

  def destroy
    @lesson.destroy
    flash[:success] = t(".lesson_deleted")
    redirect_to course_path
  end

  private 
    def lesson_params
      params.require(:lesson).permit :title, :content, :course_id
    end

    def find_courses
      @courses = Course.all
    end

    def find_course
      @lesson = Lesson.find_by id: params[:id]
      @course = Course.find_by id: params[:course_id] 
    end
end
