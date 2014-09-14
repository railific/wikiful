module ApplicationHelper

  def is_active?(link_path, string)
    if current_page?(link_path)
      string + " active"
    else
      string + ""
    end
  end
end
