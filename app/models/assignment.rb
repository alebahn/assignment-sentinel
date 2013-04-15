class Assignment < ActiveRecord::Base
  attr_accessible :course_id, :due_date, :name
end
