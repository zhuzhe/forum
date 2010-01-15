class AddPostToReply < ActiveRecord::Migration
  def self.up
      add_column :replies,:post_id,:integer
      add_column :replies,:user_id,:integer
  end

  def self.down
      remove_column :replies,:post_id
      remove_column :replies,:user_id
  end
end
