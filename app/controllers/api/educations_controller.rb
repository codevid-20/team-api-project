class Api::EducationsController < ApplicationController
  #must have user_id
  def index
    @education = Education.where(user_id: 1)
    render "index.json.jb"
  end

  def create
    @education = Education.create!(
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
    @education = Education.find_by(id: 2)
    render "show.json.jb"
  end

  def update
    @education = Education.find_by(id: 2)
    @education.start_date = params[:start_date] || @education.start_date
    @education.end_date = params[:end_date] || @education.end_date
    @education.degree = params[:degree] || @education.degree
    @education.university_name = params[:university_name] || @education.university_name
    @education.details = params[:details] || @education.details
    @education.user_id = params[:user_id] || @education.user_id
    @education.save
    render "show.json.jb"
  end

  def destroy
    @education = Education.find_by(id: 2)
    @education.destroy
    render "destroy.json.jb"
  end
end
