class AddAuthorIdToComments < ActiveRecord::Migration
  def self.up
    add_column :comments, :author_id, :integer
    remove_column :comments, :email
  end

  def self.down
    add_column :comments, :email, :string
    remove_column :comments, :author_id
  end
end
