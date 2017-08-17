class SearchController < ApplicationController
  def index
  end
  def search
    if params[:search]
      @users = User.search(params[:search])
    else
      @users = User.all
    end
  end
end
