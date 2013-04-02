class User < ActiveRecord::Base
  attr_accessible :name, :password, :password_confirmation, :password_digest, :avatar
  validates :name, presence: true, uniqueness: true
  has_secure_password
  has_attached_file :avatar, :styles => { :medium => "300x300>" }, :default_url => "/images/:style/default.jpg"
end
