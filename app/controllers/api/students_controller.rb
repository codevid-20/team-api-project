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

  def update
    @student = Student.find_by(id: params[:id])
    @student.first_name = params[:first_name] || @student.first_name
    @student.last_name = params[:last_name] || @student.last_name      
    @student.email = params[:email] || @student.email
    @student.phone_number = params[:phone_number] || @student.phone_number
    @student.short_bio = params[:short_bio] || @student.short_bio 
    @student.linkedin_url = params[:linkedin_url] || @student.linkedin_url
    @student.twitter_handle = params[:twitter_handle] || @student.twitter_handle
    @student.personal_blog = params[:personal_blog] || @student.personal_blog
    @student.online_resume = params[:online_resume] || @student.online_resume
    @student.github_url = params[:github_url] || @student.github_url
    @student.photo = params[:photo] || @student.photo

    @student.save
    render "show.json.jb"
  end


  def destroy
    @student = Student.find_by(id: params[:id])
    @student.destroy
    render json: {message: "You have successfully deleted the student!"}
  end

end
