class PostsController < ApplicationController
  include ReverseProxy::Controller
  prepend_before_action :proxy_to_phoenix

  def index
  end

  def show
  end

  def new
  end

  def create
  end

  def update
  end

  def destroy
  end
end
