class Api::StudentsController < ApplicationController

  def index
    render "index.json.jb"
  end

end
