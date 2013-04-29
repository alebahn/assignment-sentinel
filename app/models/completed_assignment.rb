class CompletedAssignment < ActiveRecord::Base
  attr_accessible :assignment_id, :done_date, :user_id
  belongs_to :user
  belongs_to :assignment

  validates :user_id, presence: true, uniqueness: true
  validates :assignment_id, presence: true, uniqueness: true
end
