module ApplicationHelper
  def login_helper
    if current_user.is_a? User
      render 'app/logged_user_menu'
    else
      render 'app/guest_user_menu'
    end
  end
end
