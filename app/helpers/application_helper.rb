# encoding: UTF-8

module ApplicationHelper

  # Returns the full title on a per-page basis.
  def full_title(page_title)
    base_title = "Ассамблея студенческий инициатив 'Виват, Россия!'"
    if page_title.empty?
      base_title
    else
      "#{base_title} | #{page_title}"
    end
  end


  def is_active(controller, action)       
    params[:action] == action && params[:controller] == controller ? "active" : nil        
  end

end