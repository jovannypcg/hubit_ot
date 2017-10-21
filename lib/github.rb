require 'httparty'

# Github client
class Github
  include HTTParty

  base_uri 'api.github.com'

  # Gets the public repositories
  def repositories
    response = self.class.get('/repositories').body
    JSON.parse(response)
  end
end
