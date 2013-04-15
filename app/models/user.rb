class User < ActiveRecord::Base
  attr_accessible :name, :password, :password_confirmation, :password_digest, :avatar
  has_and_belongs_to_many :courses
  has_many :completed_assignments
  has_many :assignments, through: :courses

  validates :name, presence: true, uniqueness: true
  has_secure_password
  has_attached_file :avatar, :styles => { :medium => "300x300>" }, :default_url => "/images/:style/default.jpg"
end
