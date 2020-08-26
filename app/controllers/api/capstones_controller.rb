class Api::CapstonesController < ApplicationController
  def index
    @capstone = Capstone.all
    render "index.json.jb"
  end

  def create
    @capstone = capstone.create!(
      name: params[:name],
      description: params[:description],
      url: params[:url],
      screenshot: params[:screenshot],
      user_id: params[:user_id],
      # hardcoded until current user works
    )
  end

  def show
    @capstone = Capstone.find_by(params[:id])
    render "show.json.jb"
  end

  def update
    @capstone = Capstone.find_by(params[:id])
    @capstone.name = params[:name] || @capstone.name
    @capstone.description = params[:description] || @capstone.description
    @capstone.url = params[:url] || @capstone.url
    @capstone.screenshot = params[:screenshot] || @capstone.screenshot
    @capstone.user_id = params[:user_id] || @capstone.user_id

    @capstone.save
    render "show.json.jb"
  end

  def destroy
    @capstone = Capstone.find_by(params[:id])
    @capstone.destroy
    render "destroy.json.jb"
  end
end
