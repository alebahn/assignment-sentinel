class Department < ActiveRecord::Base
  attr_accessible :abbr, :name

  has_many :courses

  validates :name, presence: true
  validates :abbr, presence: true, format: { with: /\A[A-Z]{4}\z/}

  before_destroy :ensure_not_referenced_by_any_course

  private
    #ensure that there are no courses referencing this department
    def ensure_not_referenced_by_any_course
      if courses.empty?
        return true
      else
        errors.add(:base, 'Courses present')
        return false
      end
    end
end
