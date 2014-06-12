class MicropostsController < ApplicationController
  def release
  end

  def show
  end
  def index
    list
    render :action=>'list'
  end
  def new
    @micropost=Micropost.new
  end
end
