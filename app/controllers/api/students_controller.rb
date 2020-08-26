class Api::StudentsController < ApplicationController

  def index
    @students = Student.all
    render "index.json.jb"
  end

  def show
    @student = Student.find_by(id: params[:id])
    render "show.json.jb"
  end

  def create
    @student = Student.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email],
      phone_number: params[:phone_number],
      short_bio: params[:short_bio],
      linkedin_url: params[:linkedin_url],
      twitter_handle: params[:twitter_handle],
      personal_blog: params[:personal_blog],
      online_resume: params[:online_resume],
      github_url: params[:github_url],
      photo: params[:photo]
    )

    if @student.save
      render "show.json.jb"
    else
      render json: {errors: @student.errors.full_messages}
    end
  end

end
