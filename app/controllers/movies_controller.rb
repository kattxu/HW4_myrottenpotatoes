# This file is app/controllers/movies_controller.rb
class MoviesController < ApplicationController
  def index
    @movies = Movie.all
    #raise @movies.inspect
  end
  
    # replaces the 'create' method in controller:
  def create
    @movie = Movie.new(params[:movie])
    if @movie.save
      flash[:notice] = "#{@movie.title} was successfully created."
      redirect_to movies_path
    else
      render 'new' # note, 'new' template can access @movie's field values!
    end
  end
  
  # replaces the 'update' method in controller:
  def update
    @movie = Movie.find params[:id]
    if @movie.update_attributes(params[:movie])
      flash[:notice] = "#{@movie.title} was successfully updated."
      redirect_to movie_path(@movie)
    else
      render 'edit' # note, 'edit' template can access @movie's field values!
    end
  end
  
  # note, you will also have to update the 'new' method:
  def new
    @movie = Movie.new
  end

  def show
    #testing
    #raise params.inspect
    
    id = params[:id] #retrieve movie ID from URI route
    @movie = Movie.find(id) #look up movie by unique id
    #will render app/views/movies/show.html.haml by default
  end
    
  def edit
    @movie = Movie.find params[:id]
  end
 
  def destroy
    @movie = Movie.find(params[:id])
    @movie.destroy
    flash[:notice] = "Movie '#{@movie.title}' deleted."
    redirect_to movies_path
  end
  
  private
  def movie_params
	  params.require(:movie).permit(:title, :rating, :description, :release_date, :timestamps)
  end
end