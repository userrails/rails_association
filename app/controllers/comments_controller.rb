class CommentsController < ApplicationController
  def index
    @commentable = find_commentable
    @comments = @commentable.comments
  end
  
  def show
    @comment = Comment.find(params[:id])
  end
  
  def new
   @comment = Comment.new
  end

  def create
    @commentable = find_commentable
    @comment = @commentable.comments.build(params[:comment])
    if @comment.save
      redirect_to :id => nil
    else
      render "new"
    end
  end
  
  private
  
  def find_commentable
    params.each do |name, value|
      if name =~ /(.+)_id$/
        return $1.classify.constantize.find(value)
      end
    end
    nil
  end
end