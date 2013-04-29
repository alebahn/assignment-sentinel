class CompletedAssignment < ActiveRecord::Base
  attr_accessible :assignment_id, :done_date, :user_id
  belongs_to :user
  belongs_to :assignment

  validates :user_id, presence: true, uniqueness: { scope: :assignment_id }
  validates :assignment_id, presence: true, uniqueness: { scope: :user_id }
end
