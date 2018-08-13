module CurrentUserConcern
  extend ActiveSupport::Concern

  def current_user
    super || guest_user
  end

  private

  def guest_user
    guest = GuestUser.new { |g|
      g.name = "Guest User"
      g.first_name = "Guest"
      g.last_name = "User"
      g.email = "guest@guest.com"
    }
  end
end