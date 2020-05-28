class CourseUsersController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  def new
    @course_user = CourseUser.new(course_user_params)
  end

  def create
    @course_user = current_user.course_users.new(course_user_params)
    respond_to do |format|
      if @course_user.save
        format.html{redirect_to(@course_user.course)}
        format.js
      end
    end
  end


  def destroy
    @course_user = CourseUser.find_by(id: params[:id])
    course = @course_user.course
    respond_to do |format|
      if @course_user.destroy
        format.html{redirect_to(@course_user.course)}
      end
    end
  end

  private
  def course_user_params
    params.require(:course_users).permit(:course_id)
  end
end
