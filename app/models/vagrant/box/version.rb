class Vagrant::Box::Version < ActiveRecord::Base
  belongs_to :box
  has_many :providers
end
