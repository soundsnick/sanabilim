module ApplicationHelper
  def get_language
    cookies[:language] == nil ? Language.find_by(abbr: 'kk') : Language.find_by(abbr: cookies[:language].split('-')[0])
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

  def point_to_mark(points)
    case points
    when 95..100
      "A"
    when 90..94
      "A-"
    when 85..89
      "B+"
    when 80..84
      "B"
    when 75..79
      "B-"
    when 70..74
      "C+"
    when 65..69
      "C"
    when 60..64
      "C-"
    when 55..59
      "D+"
    when 50..54
      "D"
    when 25..49
      "E"
    when 0..24
      "F"
    end
  end

  def point_to_color(points)
    case points
    when 70..100
      "excellent"
    when 50..70
      "good"
    when 20..50
      "satisfactory"
    when 0..20
      "bad"
    end
  end

  def not_set_languages
    Language.where.not(abbr: get_language.abbr)
  end
end
