class Repository < ApplicationRecord
  include Storable

  belongs_to :user

  def self.parse(repo)
    Repository.new(gh_id: repo['id'],
        name: repo['name'],
        description: repo['description'],
        url: repo['html_url'])
  end
end
