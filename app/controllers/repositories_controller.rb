class RepositoriesController < ApplicationController
  DOWNLOAD_TIMER = 3.seconds

  def index
    @repos = Repository.all
  end

  def download
    ReposDownloadJob.set(wait: DOWNLOAD_TIMER).perform_later
    redirect_to root_path
  end
end
