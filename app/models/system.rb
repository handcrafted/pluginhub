# == Schema Information
# Schema version: 20081214054356
#
# Table name: systems
#
#  id          :integer         not null, primary key
#  subdomain   :string(255)
#  plugin_name :string(255)
#  description :text
#  system_url  :string(255)
#  name        :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#

class System < ActiveRecord::Base
  
  has_many :plugins
  
  validates_presence_of :subdomain, :system_url, :name, :description
  
end
