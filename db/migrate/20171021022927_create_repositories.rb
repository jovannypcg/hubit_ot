class CreateRepositories < ActiveRecord::Migration[5.1]
  def change
    create_table :repositories do |t|
      t.references :user, foreign_key: true
      t.integer :gh_id
      t.string :name
      t.string :description
      t.string :url

      t.timestamps
    end
  end
end
