class SearchesController < ApplicationController
  before_action :authenticate_user!

  def search
    @range = params[:model]

    if @range == "user"
      @users = User.looks(params[:method], params[:word])
    else
      @books = Book.looks(params[:method], params[:word])
    end
  end
end
