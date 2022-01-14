class Payment < ApplicationRecord
  belongs_to :enrollment

  validates :value, 
    presence: true
  
  validates :due_date, 
    presence: true

  validates :status, 
    presence: true,
    inclusion: { in: %w(Aberta Atrasada Paga), message: "%{value} is not a valid gender" }

  # validates :enrollment, 
  #   presence: true
  
end
