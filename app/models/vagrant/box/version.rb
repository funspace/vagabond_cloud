class Vagrant::Box::Version < ActiveRecord::Base
  belongs_to :box
  has_many :providers

  def to_s
    self.version
  end
end
