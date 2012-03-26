module ApplicationHelper
  def string_preview string_to_shorten, width
    if string_to_shorten.length > width
      string_to_shorten[0..width-4] + "..."
    else
      string_to_shorten
    end
  end
end
