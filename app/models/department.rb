class Department < ActiveRecord::Base
  attr_accessible :abbr, :name

  has_many :courses

  validates :name, presence: true
  validates :abbr, presence: true, format: { with: /\A[A-Z]{4}\z/}
end
