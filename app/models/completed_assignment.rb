class CompletedAssignment < ActiveRecord::Base
  attr_accessible :assignment_id, :done_date, :user_id
end
