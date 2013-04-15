class Course < ActiveRecord::Base
  attr_accessible :department_id, :name, :number

  belongs_to :department
  has_and_belongs_to_many :users

  validates :department, presence: true
  validates :name, presence: true
  validates :number, presence: true, numericality: {only_integer: true, greater_than: 0}

  def course_number
    department.abbr + " " + number.to_s
  end
end
