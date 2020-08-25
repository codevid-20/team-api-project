class Api::ExperiencesController < ApplicationController
  
  def show
    @experience = Experience.find_by(id: params[:id])
    render "show.json.jb"
  end

  def update

  end

end
