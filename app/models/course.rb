class Course < ActiveRecord::Base
  attr_accessible :department_id, :name, :number
end
