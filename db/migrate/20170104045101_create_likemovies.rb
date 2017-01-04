class CreateLikemovies < ActiveRecord::Migration[5.0]
  def change
    create_table :likemovies do |t|
      t.string :title
      t.text :synopsis
      t.string :movie_length
      t.string :director
      t.string :rating

      t.timestamps
    end
  end
end
