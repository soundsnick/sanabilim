class HomeController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    if user_signed_in?
      @title = text('home', 'courses_mine')
      @coursess = get_language.courses.all.limit(3).order(id: :desc)
      @courses_mine = current_user.courses.order(id: :desc)
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
    @cons = Con.all
    @adv = Advantage.all
    @courses = get_language.courses.all
  end

  def order
    if @buy = LandingQuery.new(params.permit(:name, :contact)).save
      render 'home/success'
    else
      redirect_to landing_path, notice: 'Ошибка'
    end
  end
end
