class CompletedAssignment < ActiveRecord::Base
  attr_accessible :assignment_id, :done_date, :user_id
  belongs_to :user
  belongs_to :assignment
end
