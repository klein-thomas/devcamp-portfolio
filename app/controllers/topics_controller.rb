class TopicsController < ApplicationController
  include PaginateBlogs

  layout 'blog'

  def index
    @topics = Topic.all
  end

  def show
    @topic = Topic.find(params[:id])
    @blogs = paginate_blogs(@topic.blogs.published)
  end
end
