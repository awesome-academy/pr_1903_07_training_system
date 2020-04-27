class CoursesController < ApplicationController
  before_action :find_course, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]

  def index
    @courses = Course.all.order("created_at desc")
  end
  
  def new
    @course = current_user.courses.build
  end

  def create 
    @course = current_user.courses.build course_params
    if @course.save
      redirect_to @course
    else
      render :new 
    end
  end

  def show; end

  def edit; end

  def update
    if @course.save 
      redirect_to root_course
    else
      render :edit
    end
  end

  def destroy
    @course.destroy 
    redirect_to @course
  end

  private

    def course_params 
      params.require(:course).permit :course_name, :description
    end

    def find_course
      @course = Course.find_by id: params[:id]
      unless @course 
        flash[:danger] = "Course does not exist!"
        redirect_to root_path
      end
    end
end
