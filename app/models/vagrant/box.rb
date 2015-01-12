class Vagrant::Box < ActiveRecord::Base
  has_many :versions

  def to_s
    self.name
  end
end
