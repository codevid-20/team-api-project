class Api::ExperiencesController < ApplicationController
  def index
    @experiences = Experience.all
    render "index.json.jb"
  end

  def create
    @experience = Experience.new(
      start_date: params[:start_date],
      end_date: params[:end_date],
      job_title: params[:job_title],
      company_name: params[:company_name],
      details: params[:details],
    )
    @experience.save
    render "show.json.jb"
  end

  def show
    @experience = Experience.find_by(id: params[:id])
    render "show.json.jb"
  end

  def update
    @experience = Experience.find_by(id: params[:id])
    @experience.start_date = params[:start_date] || @experience.start_date
    @experience.end_date = params[:end_date] || @experience.end_date
    @experience.job_title = params[:job_title] || @experience.job_title
    @experience.company_name = params[:company_name] || @experience.company_name
    @experience.details = params[:details] || @experience.details
    @experience.save
    render "show.json.jb"
  end

  def destroy
    experience = Experience.find_by(id: params[:id])
    experience.destroy
    render json: {message: "Experience successfully destroyed."}
  end

end
