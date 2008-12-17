class Plugin < ActiveRecord::Base
  
  belongs_to :system
  belongs_to :owner, :class_name => "User", :foreign_key => "owner_id"
  
end
