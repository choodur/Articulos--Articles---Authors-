class AuthorsController < ApplicationController
  before_filter :authenticate_author!, :except => [:index, :show, :new]

  def index
    @authors = Author.all
    
    respond_to do |format|
      format.html
     end
  end

  def show
    @author = Author.find params[:id]
    
    respond_to do |format|
      format.html
    end
  end

  def new
    @author = Author.new
    @author.build_place
    respond_to do |format|
      format.html
    end
  end

  def edit
    @author = Author.find params[:id]
    @author.build_place if @author.place.nil?
  end

  def create
    @author = Author.new(params[:author])

    respond_to do |format|
      if @author.save
        format.html { redirect_to(@author, :notice => 'Author was successfully added.') }
      else
        format.html { render :action => "new" }
        flash[:error] = "Wrong again"
      end
    end
  end
  
  def update
    @author = Author.find(params[:id])
   # @place = Place.new
   # @place.name = params[:place_attributes][:name]
   # @place.author_id = @author.id
   # @place.save
    #@author.build_place
    respond_to do |format|
      if @author.update_attributes(params[:author])
        format.html { redirect_to(@author, :notice => 'Author was successfully added.') }
      else
        format.html { render :action => "edit" }
      end
    end
  end

  def destroy
    @author = Author.find(params[:id])
    @author.destroy

    respond_to do |format|
      format.html { redirect_to(destroy_author_session_path) }
    end
  end
  
end
