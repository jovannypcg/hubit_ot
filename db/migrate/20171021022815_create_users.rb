class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.integer :gh_id
      t.string :username
      t.string :avatar
      t.string :url

      t.timestamps
    end
  end
end
