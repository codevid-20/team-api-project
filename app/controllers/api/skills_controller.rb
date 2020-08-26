class Api::SkillsController < ApplicationController
  def index
    render "index.json.jb"
  end
end
