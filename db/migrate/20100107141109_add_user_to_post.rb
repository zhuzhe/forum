class AddUserToPost < ActiveRecord::Migration
  def self.up
      change_table :posts do|t|
         t.references :user
      end
  end

  def self.down
      remove_column :posts,:user_id
  end
end
