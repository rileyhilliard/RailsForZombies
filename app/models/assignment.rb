class Assignment < ActiveRecord::Base
  # attr_accessible :title, :body
  
  belongs_to :zombie
  belongs_to :role
end
