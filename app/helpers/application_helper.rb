module ApplicationHelper
  def login_helper(style = '')
    if current_user.is_a? GuestUser
      render partial: 'app/guest_user_menu', locals: { style: style }
    else
      render partial: 'app/logged_user_menu', locals: { style: style }
    end
  end

  def source_helper(layout_name)
    if session[:source]
      content_tag :p, "Thanks for visiting me from #{session[:source]} and you are on the #{layout_name} page.", class: "source-greeting"
    end
  end
end
