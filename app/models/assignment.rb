class Assignment < ActiveRecord::Base
  attr_accessible :course_id, :due_date, :name
  belongs_to :course
  has_many :completed_assignments

  validates :course, presence: true
  validates :name, presence: true

  def completed(user)
    return user.completed_assignments.where(assignment_id: id).count > 0
  end
end
