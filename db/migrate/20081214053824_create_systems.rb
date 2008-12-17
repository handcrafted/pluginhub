class CreateSystems < ActiveRecord::Migration
  def self.up
    create_table :systems do |t|
      t.string :subdomain
      t.string :plugin_name
      t.text :description
      t.string :system_url
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :systems
  end
end
