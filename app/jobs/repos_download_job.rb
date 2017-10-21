require 'github'

class ReposDownloadJob < ApplicationJob
  queue_as :default

  def perform
    repos = Github.new.repositories

    repos.each do |downloaded_repo|
      owner = downloaded_repo['owner']

      user = User.parse(owner).store

      stored_repo = Repository.parse(downloaded_repo)
      stored_repo.user_id = user.id
      stored_repo.store
    end
  end
end
