class MicropostsController < ApplicationController
  def release
  end

  def new

  end

  def show
    micropost=Micropost.all
    @micropost = micropost.reverse()


  end

  def showContent
    @id=params[:id]
    @micropost=Micropost.find_by_id(@id)
    @micropost.content=@micropost.content.html_safe

  end

  def index

    render :action => 'list'
  end

  def new_blog
    @micropost=Micropost.new
    @micropost.title=params[:title]
    @micropost.content=params[:content]
    @micropost.author="nihao"

    if @micropost.save
      flash[:notice]='successfully released!'
      redirect_to :action => 'show'
    end
  end
end
