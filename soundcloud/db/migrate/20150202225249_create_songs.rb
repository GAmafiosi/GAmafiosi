class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
    	t.string :title
    	t.string :permalink_url
    	t.string :description
    	t.string :avatar_url
    	t.string :user_id
    end
  end
end
