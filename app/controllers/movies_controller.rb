class MoviesController < ApplicationController
  def index
    if params[:is_showing].present?
      @movies = Movie.where(is_showing: params[:is_showing])
    elsif params[:keyword].present?
      @movies = Movie.where("name LIKE ? OR description LIKE ?", "%#{params[:keyword]}%", "%#{params[:keyword]}%")
    else
      @movies = Movie.all
    end
  end
end
