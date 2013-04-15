class Course < ActiveRecord::Base
  attr_accessible :department_id, :name, :number

  belongs_to :department
  has_and_belongs_to_many :users
  has_many :assignments

  validates :department, presence: true
  validates :name, presence: true
  validates :number, presence: true, numericality: {only_integer: true, greater_than: 0}

  before_destroy :ensure_not_referenced_by_any_user

  def course_number
    department.abbr + " " + number.to_s
  end

  private
    #ensure that there are no courses referencing this department
    def ensure_not_referenced_by_any_user
      if users.empty?
        return true
      else
        errors.add(:base, 'Courses present')
        return false
      end
    end
end
