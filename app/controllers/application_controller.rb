class ApplicationController < ActionController::Base
  protect_from_forgery
  
  before_filter :authenticate_author!, :except => [:index, :show]
  
  def index
    #raise 'error'
  end
end
