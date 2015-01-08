class Vagrant::Box < ActiveRecord::Base
  has_many :versions
end
