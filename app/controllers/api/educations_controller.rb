class Api::EducationsController < ApplicationController
  #must have user_id

  def create
    @education = Education.new(
      start_date: params[:start_date],
      end_date: params[:end_date],
      degree: params[:degree],
      university_name: params[:university_name],
      details: params[:details],
      user_id: params[:user_id],
      # hardcoded until current user works
    )
  end

  def show
    @education = Education.find([params[:id]])
    render "show.json.jb"
  end
end
