module ApplicationHelper
   def ui_timestamp(date)
    content_tag(:time, datetime: "#{date.to_s(:db)}") do
      "#{date.strftime('%b %e, %Y')} @ #{date.strftime('%I:%M%P')}"
    end
  end
end
