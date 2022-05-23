class AuthorsController < ApplicationController
  before_action :set_author, only: [:show, :edit, :update, :verify, :destroy]

  def mainpage
  end
  def index
    @authors = Author.all
  end

  def show
  end

  def new
    @author = Author.new
  end
  
  def edit
  end

  def create
    @author = Author.new(author_params)
    @author.date = 'Not verified'
    if @author.save
      redirect_to @author
    else
      render :new
    end
  end

  def update
    if @author.update(author_params)
      redirect_to @author
    else
      render :edit
    end
  end
  def verify
      @author.update date: Date.today ,verify: 'Verified'
      redirect_to authors_path
  end
  def destroy
    @author.destroy
    redirect_to authors_path
  end
  
  private

  def set_author
    @author = Author.find(params[:id])
  end
  def author_params
    params.require(:author).permit(:name, :address)
  end
end


@author