class ApplicationController < ActionController::Base
  before_action :set_locale

  def get_language
    cookies[:language] == nil ? Language.find_by(abbr: 'kk') : Language.find_by(abbr: cookies[:language].split('-')[0])
  end

  def set_language
    if Language.find_by(abbr: params[:language])
      cookies[:language] = params[:language]
    end
    redirect_back fallback_location: root_path
  end

  def set_locale
    I18n.locale = params[:locale] || 'ru'
  end

  def after_sign_in_path_for(resource)
    root_path
  end

  def after_sign_out_path_for(resource_or_scope)
    request.referrer
  end


  def text(mod, label)
    @module = get_language.template_modules.find_by(label: mod)
    if @module
      @template = @module.templates.find_by(label: label)
      if @template
        @template.title
      else
        "Null template"
      end
    else
      "Null module"
    end
  end

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:name_surname, :email, :password, :birthday, :phone, :gender)}

    devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:name_surname, :email, :password, :birthday, :phone, :gender, :current_password, :avatar )}
  end
end
