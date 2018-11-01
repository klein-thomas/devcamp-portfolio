module PaginateBlogs
  extend ActiveSupport::Concern

  def paginate_blogs(scope)
    scope
      .recent
      .page(params[:page])
      .per(5)
  end
end