class CreatePlaces < ActiveRecord::Migration
  def self.up
    create_table :places do |t|
      t.string :location
      t.float :latitude
      t.float :longitude
      t.integer :author_id

      t.timestamps
    end
  end

  def self.down
    drop_table :places
  end
end
