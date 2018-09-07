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
      content_tag :p, "Thanks for visiting me from #{session[:source]} and you are on the #{layout_name} page.", class: 'source-greeting'
    end
  end

  def nav_helper
    nav_items
      .map { |it| yield it[:title], it[:url], { active: active?(it[:url]) } }
      .join
      .html_safe
    nil
  end

  def nav_items
    [
      { title: 'Home', url: root_path },
      { title: 'About Me', url: about_path },
      { title: 'Blogs', url: blogs_path },
      { title: 'Portfolios', url: portfolios_path },
      { title: 'Contact', url: contact_path }
    ]
  end

  def active?(path)
    current_page? path
  end
end
