class CommentsController < ApplicationController
  
  before_filter :get_article

  def show
    @comment = Comment.find params[:id]
  end

  def new
    @comment = Comment.new
    
    respond_to do |format|
      format.html
    end
  end
  
  def create
    @comment = @article.comments.build (params[:comment])
    @comment.author = current_author
    
    @comments = @article.comments
    
    respond_to do |format|
      if @comment.save
        format.html { redirect_to article_path @article } 
        format.js
      else
        format.html { render :action => "new" }
        flash[:error] = "Wrong again"
      end
    end
  end
  
  def edit
    @comment = Comment.find params[:id]
  end
  
  def update
    @comment = Comment.find params[:id]

    respond_to do |format|
      if @comment.update_attributes(params[:comment])
        format.html { redirect_to article_path @article }
      else
        format.html { render :action => "edit" }
      end
    end
  end
  
  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    @comments = @article.comments
  end
  
  private
  
  def get_article
    @article = Article.find(params[:article_id])
  end
  
end
