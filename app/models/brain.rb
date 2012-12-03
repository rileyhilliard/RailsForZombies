class Brain < ActiveRecord::Base
  attr_accessible :zombie_id, :status, :flavor
  belongs_to :zombie

end
