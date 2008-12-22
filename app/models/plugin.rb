# == Schema Information
# Schema version: 20081214054356
#
# Table name: plugins
#
#  id              :integer         not null, primary key
#  github_url      :string(255)
#  description     :text
#  name            :string(255)
#  system_id       :integer
#  owner_id        :integer
#  popularity      :float
#  watchers        :integer
#  forks           :integer
#  last_updated_at :datetime
#  created_at      :datetime
#  updated_at      :datetime
#

class Plugin < ActiveRecord::Base
  
  belongs_to :system
  belongs_to :owner, :class_name => "User", :foreign_key => "owner_id"
  
end
