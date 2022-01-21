class Student < ApplicationRecord
    validates :name, 
        presence: true
        #uniqueness: true - don't think names should be unique :thinking:
    
    validates :cpf, 
        presence: true,
        uniqueness: true, 
        #uniqueness: { message: "CPF already associated with an account" },
        numericality: { only_integer: true }
    
    validates :gender, 
        presence: true, 
        inclusion: { in: %w(M F O), message: "%{value} is not a valid gender" } #added gender option "other"
        #acceptance: { accept: ['M', 'F', 'O'] }
    
    validates :phone,
        numericality: { only_integer: true, allow_nil: true }
    
    validates :payment_method, 
        presence: true,
        inclusion: { in: %w(Boleto Cartão), message: "%{value} is not a valid payment_method" }
        #acceptance: { accept: ['Boleto', 'Cartão'] }
end
