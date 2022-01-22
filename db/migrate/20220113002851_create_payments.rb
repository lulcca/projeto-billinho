class CreatePayments < ActiveRecord::Migration[7.0]
  def change
    create_table :payments do |t|
      t.decimal :value, precision:10, scale:2, null: false
      t.date :due_date, null: false
      t.references :enrollment, null: false, foreign_key: true
      t.string :status, :default => "Aberta"

      t.timestamps
    end
  end
end
