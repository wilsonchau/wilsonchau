class HomeController < ApplicationController
  def index
    title = params[:title]
    content = params[:content]
    BlogPost.create(:title => title, :content => content)
    @all_blog_posts = BlogPost.all
  end
end
