class RepositoriesController < ApplicationController
  def index
    @repos = Repository.all
  end

  def download
    redirect_to root_path
  end
end
