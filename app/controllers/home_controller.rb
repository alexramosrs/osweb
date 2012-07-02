
class HomeController < ApplicationController
  def index
	@posts = Post.limit(3).order('data desc')
  end
end
