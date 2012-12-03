class Zombie < ActiveRecord::Base
  attr_accessible :age, :bio, :name
  has_one :brain, dependent: :destroy
  before_save :make_rotting
  has_many :assignments
  has_many :roles, through: :assignments
  has_many :tweets
  
  
  scope :rotting, where(rotting: true)
  scope :fresh, where("age < 20")
  scope :recent, order("create_at desc").limit(3)
  
  def make_rotting
      self.rotting = true if age > 20
  end
  
end