class ArticlesController < ApplicationController
  before_filter :get_authors

  def index
    #@articles = Article.all
    #@drafts = Article.drafts
    @posted = Article.posted
    respond_to do |format|
      format.html
      format.xml
    end 
  end

  def show
    @article = Article.find params[:id]
    @author = Author.find @article.author_id
    #@comments = @article.comments.paginate :page => params[:page], :order => 'created_at DESC', :per_page => 5
    @comments = @article.comments
    respond_to { |format| format.html }
  end

  def new
    @article = Article.new
    
    respond_to do |format|
      format.html

    end
  end

  def edit
    @article = Article.find params[:id]
  end

  def create
    @article= current_author.articles.build(params[:article])

    respond_to do |format|
      if @article.save
        format.html { redirect_to(@article, :notice => 'Article was successfully published.') }
      else
        format.html { render :action => "new" }
        flash[:error] = "Wrong again"
      end
    end
  end
  
  def update
    @article = Article.find(params[:id])
    
    respond_to do |format|
      if @article.update_attributes(params[:article])
        format.html { redirect_to(@article, :notice => 'Article was successfully published.') }
      else
        format.html { render :action => "edit" }
      end
    end
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy

    respond_to do |format|
      format.html { redirect_to(articles_url) }
    end
  end
  
  def list
    @articles = current_author.articles
  end
  
  def get_authors
    @authors = Author.all
  end

end
