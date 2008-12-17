class CreatePlugins < ActiveRecord::Migration
  def self.up
    create_table :plugins do |t|
      t.string :github_url
      t.text :description
      t.string :name
      t.integer :system_id
      t.integer :owner_id
      t.float :popularity
      t.integer :watchers
      t.integer :forks
      t.datetime :last_updated_at

      t.timestamps
    end
  end

  def self.down
    drop_table :plugins
  end
end
