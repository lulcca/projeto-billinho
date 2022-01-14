class Institution < ApplicationRecord
    validates :name, 
        presence: true
        #presence: { message: "Name must be given" } 
        #uniqueness: true #don't think names should be unique
    
    validates :cnpj, 
        uniqueness: true, 
        #uniqueness: { message: "CNPJ already associated with an account" }
        numericality: { only_integer: true }
    
    validates :ies_type, 
        inclusion: { in: %w(Universidade Escola Creche), message: "%{value} is not a valid type" }
        #acceptance: { accept: ['Universidade', 'Escola', 'Creche'] }
end
