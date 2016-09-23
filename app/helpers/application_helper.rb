module ApplicationHelper

  def flash_messages
    html = "<ul>"
    flash.each do |name, message|
      html += "<li>" + message + "</li>"
    end
    html += "</ul>"

    html.html_safe
  end
end
