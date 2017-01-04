class AddUserIdToLikemovies < ActiveRecord::Migration[5.0]
  def change
    add_column :likemovies, :user_id, :integer
  end
end
