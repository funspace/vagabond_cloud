class Vagrant::Box::Version::Provider < ActiveRecord::Base
  belongs_to :version

  def to_s
    self.name
  end
end
