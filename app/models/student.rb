class Student <ApplicationRecord
  has_many :professor_students
  has_many :professors, through: :professor_students
  validates_presence_of :name, :age, :house

  def number_of_professors
    self.professors.count
  end

  def self.sort_by_name
    order(:name)
  end
  
end
