class HomeController < ApplicationController

  def index
    if user_signed_in?
      @title = text('home', 'courses_mine')
      @courses = get_language.courses.all.limit(3).order(id: :desc)
      @courses_mine = current_user.courses.all.limit(3).order(id: :desc)
      @news = get_language.new.all.limit(4).order(id: :desc)
    else
      redirect_to landing_path
    end

  end

  def rules
    @title = text('rules', 'rules_title')
  end

  def landing
    @title = text('landing', 'title')
    @courses = get_language.courses.all
  end
end
