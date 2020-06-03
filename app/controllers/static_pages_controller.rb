class StaticPagesController < ApplicationController

  def home
    @courses = Course.order("created_at desc").limit(6)
  end

  def help; end

  def about; end
end
