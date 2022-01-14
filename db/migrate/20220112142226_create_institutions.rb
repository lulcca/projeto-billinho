class CreateInstitutions < ActiveRecord::Migration[7.0]
  def change
    create_table :institutions do |t|
      t.string :name, null: false
      t.string :cnpj
      t.string :ies_type

      t.timestamps
    end
  end
end
