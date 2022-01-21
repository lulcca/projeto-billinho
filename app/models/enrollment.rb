class Enrollment < ApplicationRecord
  belongs_to :institution
  belongs_to :student

  validates :total_value, 
    presence: true, 
    numericality: { greater_than: 0 }
  
  validates :max_payment, 
    presence: true, 
    numericality: { greater_than_or_equal_to: 1 }

  validates :payment_due_date, 
    presence: true,
    numericality: { in: 1..31 }

  validates :course_name,
    presence: true

  #validates :institution,
  #  presence: true

  #validates :student,
  #  presence: true
end
