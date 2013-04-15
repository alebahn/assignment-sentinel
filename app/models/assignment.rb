class Assignment < ActiveRecord::Base
  belongs_to :course
  attr_accessible :course_id, :due_date, :name

  validates :course, presence: true
  validates :name, presence: true
end
