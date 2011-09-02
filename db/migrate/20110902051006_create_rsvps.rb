class CreateRsvps < ActiveRecord::Migration
  def self.up
    create_table :rsvps do |t|
      t.string :names
      t.integer :children
      t.integer :adults
      t.timestamps
    end
  end

  def self.down
    drop_table :rsvps
  end
end
