class CinemasController < ApplicationController
  def index
    @cinemas = Cinema.all
  end

  def show
    @cinema = Cinema.find(params[:id])
  end

  def new
    @cinema = Cinema.new
  end

  def create
    @cinema = Cinema.new(cinema_params)
    if @cinema.save
      redirect_to @cinema, notice: "Cinema successful created" 
    else
      render :new
    end
  end

  def edit
    @cinema = Cinema.find(params[:id])
  end

  def update
    @cinema = Cinema.find(params[:id])
      if @cinema.update(cinema_params)
          # flash[:notice] = "Cinema successfully update" 
        redirect_to (@cinema), notice: "Cinema successfully updated"
      else
        render :edit
      end
  end

  def destroy
    @cinema = Cinema.find(params[:id])
    @cinema.destroy
    redirect_to @cinema, danger: "Cinema successful deleted!"
  end
private
    
  def cinema_params
    cinema_params =  params.require(:cinema).permit(:title, :description, :rating, :released_on, :total_gross, :cast, :director, :duration, :image_file_name)
  end
end

