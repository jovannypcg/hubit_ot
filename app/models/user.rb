class User < ApplicationRecord
  has_many :repositories

  def self.parse(user)
    User.new(gh_id: user['id'],
        username: user['login'],
        avatar: user['avatar_url'],
        url: user['html_url'])
  end
end
