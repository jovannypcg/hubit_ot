module Storable
  # Stores the current ActiveRecord object into database.
  #
  # Before saving it, this method verifies that the record is already stored,
  # if so, the stored record is returned.
  def store
    already_exists = self.class.exists?(gh_id: self.gh_id)

    already_exists ? self.class.find_by(gh_id: self.gh_id)
                   : self.class.create(self.attributes)
  end
end
