class PagesController < ApplicationController
  skip_before_filter :authorize, only: [:index]

  # GET /my_courses
  def my_courses
    @courses = User.find_by_id(session[:user_id]).courses

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @courses }
    end
  end
end
