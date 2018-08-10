module ApplicationHelper
  def login_helper
    if current_user.is_a? User
      render 'app/logged_user_menu'
    else
      render 'app/guest_user_menu'
    end
  end

  def source_helper(layout_name)
    if session[:source]
      content_tag :p, "Thanks for visiting me from #{session[:source]} and you are on the #{layout_name} page.", class: "source-greeting"
    end
  end
end
