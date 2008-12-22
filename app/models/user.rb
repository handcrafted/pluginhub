# == Schema Information
# Schema version: 20081214054356
#
# Table name: users
#
#  id                   :integer         not null, primary key
#  login                :string(255)
#  crypted_password     :string(255)
#  password_salt        :string(255)
#  persistence_token    :string(255)
#  login_count          :integer
#  last_request_at      :datetime
#  last_login_at        :datetime
#  current_login_at     :datetime
#  last_login_ip        :string(255)
#  current_login_ip     :string(255)
#  admin                :boolean
#  email                :string(255)
#  password_reset_token :string(255)
#  created_at           :datetime
#  updated_at           :datetime
#

class User < ActiveRecord::Base
  acts_as_authentic
end
